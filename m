Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E49A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867649;
	h=To:Subject:From:Message-Id:Date;
	bh=zvIxgJYp0QP+JQXmmK54wjFhOZBpdG+PTFMm2hQAfq0=;
	b=Io2M+jlECpxyY60/xiDYWNmkhmXTnUHfmqpwmbUy9E7WcZi3Yk4bktwOIR3ZN7Pk
	UCjOhsFh7B747pEpxSNbifdM4tGrfJIavFkxulLvnOaT1sARyiRSm7A1upROEEIKg2b
	MKNV34BX9twMiho+CP9EqLmjESJizXd2ThOhvfpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867649;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zvIxgJYp0QP+JQXmmK54wjFhOZBpdG+PTFMm2hQAfq0=;
	b=U93KjmCixuvJU99PQw4/ZoZkhi6SMOVxj8371nen8AnOLmORapVv2IYFKQ1Vz9n2
	vGmUb8HeN3EkGP+L+J2NrcE8Z0WmMuJbSO68dMxrVOhyjcvn0apY9EPNR7e+YevfJJX
	blHMO5/FbEpl1hXAhjfwqpN9XT8b2ssSjBnLTTgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9c0809d-2ca586f4-1211-48a5-955c-89fbd33fd5d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19ebc3ac13562bcfa7ef6733e451bd99a170d8cc5958df7c6e8f4e726cb8e2be
Date: Mon, 14 Feb 2022 19:40:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867649
