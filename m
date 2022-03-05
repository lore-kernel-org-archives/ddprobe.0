Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71187A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646468185;
	h=To:Subject:From:Message-Id:Date;
	bh=3/AJoq1/WoCE1Xa2sUFxXKRN/cD9GWzm8hETBwi5Dgk=;
	b=ZXRJa0EotFmCQFGIvVUZ/NBqbiTO1FbYG0QpyN4hkNpHzIPWtraXAYlhYTAVd5JL
	evbrAsID9iqcZXmQyF0X6gruq2z6daL5JDElqY4smIyakgxQ2ff0f94+1kKFXgpysNz
	9bGzfPtk/Y+BgEKMEXhNN5+8wJSGPh8DMKDmYi9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646468185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3/AJoq1/WoCE1Xa2sUFxXKRN/cD9GWzm8hETBwi5Dgk=;
	b=ePCHc1qo4HexAjT7EYwDLlV+/qODPbt2+80IS/Mc65jMz8MGSdPrlIwO4+PSwl/C
	r/eUY+447QoGiwfIV4f312DGVtWU6IgPATMHYy1KRibSV341mE4d4Fu00j0D1onA04p
	BN55ZZzxRS+utILp5erEl7kXmA0NN45GuzIfSrMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5926bae4-8f865fee-8442-48f9-b55a-8e9a3aa2b54c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2a522c36f64fdb03a804d1449e9605e9680bf39565f163473a6d20c28e74a7a
Date: Sat, 5 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646468184
