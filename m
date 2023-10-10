Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F826441A
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 04:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFY7AwQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF14C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696911428;
	bh=ytLxhMXlXfI7DEuVNWcECjSvbwmaewa/Xl5NQhi/E80=;
	h=To:Subject:From:Date:From;
	b=FFY7AwQAr98wTF5uPucJNiZo+MPQfduIxPuvrrfHTr5lmgZaG+AjoMs7v4mg1kuyr
	 78RhgkcC8z1CnJwWY21v0CsnChjMam53+AQoCrdcLIuEq2ocjfoxioE7v81iwXECHf
	 7lg7tlFhFA1QCG1IXYN0qj5YDWq2ixLb5Nc7vicZM0+2zip6QUz1zEfk1znoPuQfef
	 xtoO4l96v85+MWg5w94SXkPPurOW0vM0YlA+fPyyQ5703zi4q80fHQI85HLhDA3bYg
	 rGak8jXVVnAsTKmri4xBLWGOy77zNCIw7Sb19Kdhz1uGT/pmiqo6xl3ZbDBnoVt7sE
	 XdY74VLE8g5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC458CD68ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691142869.3034.6655002193111238281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b8257fb13bc03a0aa7aa0dcc5ca37ac3482afa7dc8856e4777ff52be79f1a6
Date: Tue, 10 Oct 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696911428
