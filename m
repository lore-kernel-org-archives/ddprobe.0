Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABBF10F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 07:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651996318;
	h=To:Subject:From:Message-Id:Date;
	bh=yU4FvboofTwC1f8Q2j0DEX1+HcDPG5PDOVj0AsgaSMA=;
	b=GBm9T71W8ES5q3mUUjnKg3to7ypNPKqDGWRVRP7o+y1e4Y9ihZHilsD6LM6CrI6K
	HlUNrsKIjYSyo+V6i8rbA1tNqcrAGsdc1tJGyvnSvUtcb5W8sugNQNzjePUMclGoFJ+
	voLp+GDTd2JdLqexmBCKG7xCGF0mxZMUe+93RXBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651996318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yU4FvboofTwC1f8Q2j0DEX1+HcDPG5PDOVj0AsgaSMA=;
	b=abk2LRXt3CvylqcNpk4ONyzLeaE/5CMlQnm5UeGrlJiiJqZ3vMJTMtTN2w7kis7/
	NDT2eOGl2Ix/w/fU+g4wlbot2+GbbyZyQelQ5PfTPQ5Nh8q1/5SvemcjFEaodOrikH2
	aATlFcfLr5abvcPkxe+zbks6Hve7u+rcPk54ZOAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2a75a6d-2481e1e8-9cd7-4f9e-a4ca-2b9722c3970c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ec2821e065e60748e5c84ca164197366f28df754a6cde8e40bc07fbc01ac016
Date: Sun, 8 May 2022 07:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651996318
