Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92F01113
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8EAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668397254;
	bh=Po4pzZvp0jhcZ/u32aEsYyfhIL7hj+2oGYhDvskVl40=;
	h=To:Subject:From:Date:From;
	b=qHlt7ePAYOHjoWciBsW9H6DoMXxDFUOxv3HxExFvYs+jGCxTNfDAeGRMSdKj4gz2M
	 HBMfN0Q7ScKBKoJIUnstiJ7Yds9U90x2ZMVGV83Z17pkOXDjuExllGtsK1q0S/DwIh
	 Ijp6clHqgjHHrbsJmLLk0JbZvXIy3TmtR9iuJALWXjOpoWuH13faTsDaqqF79lxdvz
	 G5lR+ccZs+pWJGiTR8D8bzqo21vyKzOqQMNhlKbOqigUkPOZW/IjuBUIjRapWofOiy
	 8e2C83aKoEUkfNChTIBi/QpbzmyUTsjwea/XD1ZT+n23EVYUw+biVxPixVTT9UO4uT
	 GRBXqzqkLXwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E58BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839725431.30119.7969511305212634567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea26b79cce536caa053354a5dd6d9fb9aee03d57e551668d99bd5e485ca2aad
Date: Mon, 14 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668397254
