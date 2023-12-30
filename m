Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309859474
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDhrbYpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93599C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703954896;
	bh=4xL6QAGXCe9r3uk7QYd+vKCN1uoToFpv5mnfjYlQpJU=;
	h=To:Subject:From:Date:From;
	b=VDhrbYpjd/cyrirKDzm91/5Y+szY2p6l5CPQ8nfnLgjoEJvf9iyInEklAEajkLCoJ
	 SiSokzhLdN5SvtRetd/FqfQ9D8z5BcrYHrAsAYAyBicx96RRtb/1Y8CbRw1EymfBsV
	 yKhyC4ChK26U5sq/0L4dzbsPdBrqVIDVYAtMhjqcrSXmTFPYvw7GZ6PLRq9A9Sodwi
	 z0BSyRg0jJ+Jk7gaCdZexsrabLfFZTq1xDBfr6DiPdI99c+cWeDkuZcxtR20Yj+DN+
	 8cFIRLlc/a3sTPcMaFOnYcEK9tXCOp3yGiV6EdaJglLiWuXhbv24dd8qwhmcUkCMc5
	 q7TwAS3SomFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 752F5C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170395489643.20519.8090313245709281937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341921b5b10341bf9f95d124a19d458b61e70eadaa26ccc5f06aaa843fa191ff
Date: Sat, 30 Dec 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703954896
