Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381447E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 11:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654170119;
	h=To:Subject:From:Message-Id:Date;
	bh=SMMHjSiwyS6ETk64RfY8KwO29M4bWAruc01hYIWjAjE=;
	b=D1sBo/GHBjCFOhTC7anB+UI0eAVfRxTaw8exQ8AKvFPoi8DasG/HTSrn2guf1VSU
	0dH7FCv7aRSeICImtWURahrmWWhxPf/iM5k1LP5NmK6YfK+Y6Wz5Mf8ydZbEP5z0cCy
	VMZWd27rchpaav4j8HTno81SZVx187mjkSPYpvM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654170119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SMMHjSiwyS6ETk64RfY8KwO29M4bWAruc01hYIWjAjE=;
	b=O/2sswcE6ZH1T7C5T4bGBdTHSA7gBM+xrpDlizXDiLOFCdl0/xUgsIgO+esEJ+kK
	hrJt2j//sCS8wjhbWviqVtwYa1xaGsHTUbRmTLnuEHUU2SKtzQqw8e/NWTvXzODHPgO
	C4XHeLvyI05GaNlBRKh+0l4EF0xIfrohhXx/K19Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812438ecad-7a1f5a2e-29ef-419c-b7a4-3bb565e43b8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dda67fc2e8176fa2fc7ff74458266f2a98b014e4505e77d94e7259fef07cd7da
Date: Thu, 2 Jun 2022 11:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654170119
