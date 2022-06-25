Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085752907
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656176212;
	h=To:Subject:From:Message-Id:Date;
	bh=Bhs8EaZlwsoWVErGhZa98VecjIyTFiUnxYoFk034paY=;
	b=H5y7deAxwL+CGJyp4ob+NbKukWpA+4cDdSoqzbYC6soXX8xoE+jGWvpZgdEkIXge
	pGT7ropCq+P+8pYnqNBVOjYq707G4RFvslCzY2nrdJKnRyT0LIXnjD4BhlLmlYSkCDP
	FU3B2wCz8Wts88Bip65QWVCbXJWrDQ+Pa4Hs2kaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656176212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bhs8EaZlwsoWVErGhZa98VecjIyTFiUnxYoFk034paY=;
	b=Z1Oqn4JhZMEoujiwF6UNJFMT/9AubPh3kEqDYQ1ISxLfk28VCx2E6v4x1wJhmMM0
	JZZqeV3+MULWklrbJwkD/rrdFa+Hv4xfCq3n64tiN0NMxSmYNrObNZwylKWyHjBK0B0
	tsYuYyUTVYXd0nCRlCOdoTMIjMBexRAo6abe0Z04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819bcb793c-590460c5-a1c6-4e08-ad64-cc002a2e2e56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 100e61ad1758b677be3c5c7eb157c064fa09d07f926c8331e710a663dbd380eb
Date: Sat, 25 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656176212
