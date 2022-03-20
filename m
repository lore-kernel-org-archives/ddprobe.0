Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA617A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647771085;
	h=To:Subject:From:Message-Id:Date;
	bh=0QJceZxgrFnlzzCh2JV7aCp9Nhix9KdwiBhmSzqWt+w=;
	b=i1M73p/xSs4XHI9n1IL3fYeUBImBEBWU0JlJbjHV4vX7YV2m1r2/dNuJQqT2iz7L
	IfqJGCGrFQCcyglzO562os3PHsJ40y0vzfwquG3UXGV2sxL9ka1E3D9Ttr+iWt+9HX2
	/MQjdqYCjey/r3cxJuoXB73JCykGg/lHFzd8LM5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647771085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0QJceZxgrFnlzzCh2JV7aCp9Nhix9KdwiBhmSzqWt+w=;
	b=Pa77cpahe5Swx6QRMGVRwfNI1dciWhy7N2OLzHnN/a0Pcn3tAg46AuhcHD7yst7/
	K3x7WxGfkPzcDW2p7PyWuqL6Y2frTDpsaY34QwJnSPK1qM+wP47gHVewseOIP7xvdrC
	cDvAiwlQN35M/j2ezntKaHjPgBH4SJKT3IZj8awg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6cf67c4-76639f9d-9a6f-4661-8173-0708acc6e90e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 775833a8870847ac90a94bb08a5c1a2600fa1a0bb6ea40c7d43198a6afa65b1d
Date: Sun, 20 Mar 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647771084
