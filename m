Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56201841
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FC9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673914287;
	bh=IfuAN6Xh/hhresFR4kzdTm8oeRMZyG9lpf0IN+LpkXY=;
	h=To:Subject:From:Date:From;
	b=WZRkwixftyMy2BEhRAQRj5PRWwC7lN0eOYJI9r9p2c0HjxhBJznR5kCwHGBoJkTqb
	 S3ws4NXxKhnxs7eRsTQ5txiXTay3joxW3obojk6kLc1KUtqObBZDCzlIsWv/x29qBi
	 wgYjVz4l+PESaiMuoOS6+ef+g9rb6kofBFVba7OOnYd6zSWiLLRuKZfsB8ZCkc0tgN
	 90nRGqei5JsGElSh/CKhPIwXIWcmBF+YwHpBVKzh64GlKhDz6l88UnEG8zbSGk6iwh
	 g5PcL5JUTrL6d0yclvJ8qOTy6Gh4NYqJXoFAumuvh04ee1DpyaXnTlMNFSIiW7tnWl
	 A5BpJuVUkyltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EEEC54EBE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167391428738.32751.18118429027053309963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517787bc3618e31281b454433310c731a274f75ea1137abd187d26990c960c8f
Date: Tue, 17 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673914287
