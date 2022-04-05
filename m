Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C52615A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 07:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649144278;
	h=To:Subject:From:Message-Id:Date;
	bh=9p6tOYn8iB6pzPU8FfjQlzo77RTFK4Zgcasz1RTOg1k=;
	b=FR2/vQ/ldwws6kPW704CWnykBKORYIolf49g106O8Hh+x4no5ThuP/rVyY2+ejpS
	5birTMyhK1fMcK0PANiknvdrFd/LXqJ5s3D2sWQE5wZw7VRv1sIB3KieSOEP9/jEVSi
	dzyKbA4cJ5Tqnz5qQq3B7aDvc6sQmenqpDIC7GL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649144278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9p6tOYn8iB6pzPU8FfjQlzo77RTFK4Zgcasz1RTOg1k=;
	b=J39NbEoHU8bmuO88egWr/ZgVEFqzPCfiad5vpwiHeBwutEf7ULZQfh3cL+63fvzj
	DBb2eoHFBqGeg1xzbKonCkpEklL5mEXCVLpFNHBCbJH1r/UgPrcYDOmY1m4YB/kfc2r
	uxCgja0evcEEX1sHnyNJv6ZHFINkwOdn29ge0TeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8a8acd2-e293056b-8e9d-4899-a3f9-9da70d83e4d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 311d2ff81b7510ba6b1f3adc0cca0c7527bdcfe25f9f0685ac866070d33a83bc
Date: Tue, 5 Apr 2022 07:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649144278
