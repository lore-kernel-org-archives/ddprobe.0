Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351772566
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 11:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651665418;
	h=To:Subject:From:Message-Id:Date;
	bh=oCPOeuCUrVU5qe59iQkYak2GFIGjL+QC1yg1cHK4L+Y=;
	b=grWikfRDJK7rLtniGG8sQDb+ChA7xsVwAen0XmHPcW3l8ktPE7lF8y1c23WmTDGZ
	8Sn3frkcrrqYNLf3kF1nnK5VS/70+j8b6HYu3xSmvhoYW2vNF6PCe6vgEy3sVu/Qe5d
	9b+QzXcd8pP+WagdSxVupFGDfnVeFgaelGVU/76Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651665418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oCPOeuCUrVU5qe59iQkYak2GFIGjL+QC1yg1cHK4L+Y=;
	b=CurFJOLwk/MiRNfb/D3kowmWDHti3OAHkWQ+pIfP1YaKBvbq5PDXbMbF9awL4viz
	kGOUhE/DYZhGtf0tkxHhNjL9p6iBmR87d3EKW0Q+x01pbCCsutKQ/ka1FDc4pftWDZY
	kzZ9yJEfNcoBVg3YZuQQbmzFtw5waa6TJ6i6bkXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808eee3886-b2da3c1c-12fd-4ede-947c-992acfcf584f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbcaf65ecb1c061a74e324cd907591e2aa8f27c51d31b12e2af64a93c8a18f63
Date: Wed, 4 May 2022 11:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651665418
