Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15829184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 13:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650462298;
	h=To:Subject:From:Message-Id:Date;
	bh=7Uap7/v6QI3YbpbOB1GRkkQ7lytNvBZK1Lbv+v697WU=;
	b=Np2fFkecTcBQu5CrKtcaevzxyQSmvegiuShzoK8w7ICsOmwZt/MFN4mv8fuZ+2/k
	q4DlVzLjHbQ36LDJO9Ndibis7WpWPvGOflxk75I9YHfcSVsngYFWNqKH5/Pcq+MtMtR
	fFFysktbDwUQF3F5Q94NuROZiuAcNMwjStgD6LgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650462298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Uap7/v6QI3YbpbOB1GRkkQ7lytNvBZK1Lbv+v697WU=;
	b=YSlgxgY5JkbqGTUJtQSlrKRaAlbged7TzqmERrLl87oWVm9u8wDGLIqUeXJ3mYbJ
	/l+ClD5+HU46UKkllG4/+JOg4NG6Zt8dPfSAIfVg6ePldb1pzRIGvZ8ufiJ4ePUQNqD
	lIpkpHxpZk6Hrl2W8CTFoE2YCdIryfse1k34S2BA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180473810f8-7eee2d6d-c73e-4e7a-93a6-54d7b46cbfb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a256f1db8ae13a19085bb75c93df060afe1fb4e7296019d397b4aa23883b089
Date: Wed, 20 Apr 2022 13:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650462298
