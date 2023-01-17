Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5891C20
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EBAC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673931087;
	bh=hqo8a6fVY2e6RfGNapM+ECSnuHld9imKjM/1KQr8eWY=;
	h=To:Subject:From:Date:From;
	b=EjB5ud0AnD0rXSmvD+hdNgETzJdm2VvMx69/xXxYShoPb4c1+s8OK/uyFIEDN/tic
	 Jpk2ZfNkdqVW36HWCMdpnnpb5Bc9t7OzMhW/ezpVhR9R8Mx2xhkXKXCXB0r2EhsDex
	 uvwLkum8LGup/IwaCq3nWcCAS7d+gBb8c5ReexsDpcyXVbSjoLnJdS70IFKYWbtN62
	 b5v8e9I0AeO2Dgx7kOVn1mmSivxdfIvS/bFdB4ywlseqfOG879Jcyt/D+kqMiEOuXR
	 ZgqpXeM3Er25UuiZaSTcxd56j79B3zvZ78HsvFD4eGxlFLPP1rUndM6PhKSSrZh++v
	 iK6begXRBrpIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE87C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393108743.22716.5311229564405677279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babafa2f1dab3c6e6d264a8b3c60db8ee42cb3097ca79ea8f7653253618668ab
Date: Tue, 17 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673931087
