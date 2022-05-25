Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D901392
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 21:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653513539;
	h=To:Subject:From:Message-Id:Date;
	bh=mvJ6Abr69t3B3ZGInPauz+TZPc+2dgyhW/GT7B7O+H0=;
	b=MSxr8pOxfX4SPnwIPF+HuoX6Tke3gnCgOTaykGUNXu3WLWEHL+yKP14FtUGrdtzL
	VmW3RSOWYUCuAKaB2P9fqNWM4/J1W5rQp5myHUcc1c89gukZ/xkF1Hfoe3p0S5n1MY/
	WSVLVPEAZrr51LeONRL8zptxIJ7OgeFm2o9cfP/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653513539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mvJ6Abr69t3B3ZGInPauz+TZPc+2dgyhW/GT7B7O+H0=;
	b=SXnuZsp7VG4Euvi3pca0rH+3GKSM64E4mM1/CiJ54HH0nhpYvn6iJ2pOH7vMLiRJ
	rxQL0YPwL+SJD2Q9Ki7YSP9CuLBQV1v7uoGm0mVep+mSCY9+qwxChJf6rzsczLkmF9b
	m392sGHQIdeyu9MeTHIf1hvbaDowXAZYGGvtZ8TI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd164eb2-f9ff82ef-8c29-42c5-8d27-a31e666c1b06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 519dbf080402af26bfdbb7d122373def5559bd9cc1273bda4639a3b144a23835
Date: Wed, 25 May 2022 21:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653513539
