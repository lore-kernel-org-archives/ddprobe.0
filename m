Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1930623A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656043012;
	h=To:Subject:From:Message-Id:Date;
	bh=G3oJBUiEmMmZbM3HBG5iGY2GibtoxbfZ0s3Cq+selbI=;
	b=gjvqb6S0ZpdRQrXwFR5qoIa43+Q85NuKi6JrOSfcaMkFo1rmR1rGSvJtS6FjA/1P
	jFh/GXQDVAYBClW3FDIjx8cemt1fAIP4rrw1DH4u5/DnTSdXkZruLZpfiHyOVzXpkBc
	HXDlA2ypgUATSus5lxA2btRRl37xjg5hSl+88CQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656043012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G3oJBUiEmMmZbM3HBG5iGY2GibtoxbfZ0s3Cq+selbI=;
	b=iL91q+OeFEdaOPuX/KbO2GohoIo6m+VxzDBkLvRM+XK+On/O133DBJed5riCHa93
	sN68uX1NVXeSt/BOAO6fkq0RdjHCLf+WvPZODkLfWXeQpvYLE466vD9UmLdbdTwkukW
	v+DN15PdAEsA0BsbDOUV+IRXXgBYG+0L4Hq53xps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193db00a4-4549edd8-748f-466f-bd9f-cec04bb664c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8ec6c919a762dec2194ae3ce300f0c51ba741ab19eca10448b9cdbdcc23b339
Date: Fri, 24 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656043012
