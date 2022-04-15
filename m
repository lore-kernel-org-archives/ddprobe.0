Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC447B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 17:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650044998;
	h=To:Subject:From:Message-Id:Date;
	bh=WRHnnHSyva42SKONNuhqNWQKayOTWMolQZ7Iy/n3IYY=;
	b=QGENrMFSUnofUrg7QdkE/fEL1JWzoG5YW/SWQqKCca7M3FuSXRt9gxG4Vts58yqF
	xoQsNoEMtLiL9hveoX1epSEN+xab2vZwwYNxe26pYNLmk5r40vY2xHDVidvDw6zuu3V
	dUQGrxQbnSmQtVoGhmFDGw21OnZfWY3Byd7yUtzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650044998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WRHnnHSyva42SKONNuhqNWQKayOTWMolQZ7Iy/n3IYY=;
	b=Rptbov80YXsNewgWPSnL5+zof8WssJFjhyF3CcNjwgMYlqaRbQG+HjUtLK+jvS+Z
	DpSDAsjhCHdbZ1IoWBc96YvFJXFR0EsEi24JPpSFjYxAZVLpr+nVVa7belpwJON6XNs
	ZQhwB6HavbluGT4+dLzX++t+m6eXYfQK0eDLsPA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e589258-21245c1e-fa0b-4287-8377-df94d41f3654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a79c89fcde0273ff933b6389318ed13e9b76a784d544c7903908b5f02bc8a084
Date: Fri, 15 Apr 2022 17:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650044998
