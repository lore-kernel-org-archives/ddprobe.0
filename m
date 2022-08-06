Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA181107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659773452;
	h=To:Subject:From:Message-Id:Date;
	bh=S1jcj49o/L0HbXsbsipJAe90wpM+yKgSlt3drWYqoJU=;
	b=eXUsJ8yT4G8BOdgFEmdjykumlV13rPBMt1L/4rYpM//mRyUOrAUB2daQtMvBzIMB
	ObXRODELQ5ap5GVYNAMcXmbHccymVvFX5V4Qi6a48SoGOFoIsD7solCedb8t1Bw7ArC
	HC1pBeG14xOBdFyQxoS0LinR3bgeaca1bWCu2CzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659773452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S1jcj49o/L0HbXsbsipJAe90wpM+yKgSlt3drWYqoJU=;
	b=XQop9D3wio3pqmeE/xWqwv1Wgqo9+ct9Zq914MDOIUOTtHBS4APlSklS1gwl9guw
	dTEbqibD4JvzivsmPFpCIAabCcLbK5Cu3NYaZQIiU2+LTvsfBxYfM4ef0jrfFB2F/Pt
	KuDsBiah7SCpAmwaFqW67k5I/OnhWHYqGmwfHMFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827235010e-2f584dca-e045-482b-861f-4eb6b2dffeef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87fbcd677f1a76cabae5960c1b7e13fd06fb4b932a18807637be61562bf702d9
Date: Sat, 6 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659773452
