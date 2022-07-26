Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9CA624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658799412;
	h=To:Subject:From:Message-Id:Date;
	bh=nianuKvDFUemvFAqo4C/3knDp+Zo+ZuXCcN+Y6ZKUB8=;
	b=SooVry/rVv8lEYAQamFyR7s4Aq/q1hCKREU+Rv36siqQWUiu4AQyvhNx8NFSC2Cm
	3D6xtpsT9V03vG1TegWPW9sVAIalIaV5+yUeRbnKAmzc4ssdBHazV/KS3nGGTB+AOvb
	4roowRGT5cUqR1D9W7WwG0g25LpHa4QB526ZyLs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658799412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nianuKvDFUemvFAqo4C/3knDp+Zo+ZuXCcN+Y6ZKUB8=;
	b=N9BT0lovx7sNiKiO6mW6KPB150NNDV8gVVwJXQ2F/Z/kr9P7d+qsQRCLczhO30s4
	iFGioikhWY1x0YyHMjeSbINYiKasPvNggLtETToT2OdjRAVt6RViVQ0m3KNDgUvvY/g
	inkqLiznr2iyWGv3Utkus5nYp2N3ZYQe2fwLPzsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238265418-3ce5ab3f-9af8-4c1e-ba5b-6deec0cbc29f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e91495c3ea06c143b870fd60e2fb8b3739ac461cc2de7f493d5d5ed8fa5de90
Date: Tue, 26 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658799412
