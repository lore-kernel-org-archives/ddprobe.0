Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF1C652
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 05:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651036498;
	h=To:Subject:From:Message-Id:Date;
	bh=EI0P3AATFHDfANknm+136z3cyp1W9EJh8OZlnkuCI+0=;
	b=mAGdwo8VERFeSzIWepGkKJJY3LyK9FswQJv7ihiOEZZT+XN1QGSVozPMm4esgr5D
	mTYuOUG0PCc2QRYy7gwkh7tzRaD8ObabJ94rlbNP93ZcghPVRy2rz7i1Ztsz/aeWyti
	+dBAPpqPJXKVR/vXVAaBo84tXxvUmUnCxdRu2KvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651036498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EI0P3AATFHDfANknm+136z3cyp1W9EJh8OZlnkuCI+0=;
	b=jd834hyWxmHqdDB6g75FiXIKk3XJ5CMa7XdGFNxtDZbZwYLACRPX3+CW1AqmoG8Y
	7jLZrw8oJ+DpYxMM1/+VPsEknPYgydrmCAPLJeVpQgtNwCqRbQdRLcXzDRqCYqG/aXq
	UNxHg8NGMAeQyk2Uzpl33zzootzfL0pcykd3AEVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806971a94c-cd84ee7d-0899-436f-a993-eac16267d920-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f2e15a3b3ff4d58b1277ed34f5bedc87cb02499200624b8e614879a30aa693
Date: Wed, 27 Apr 2022 05:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651036498
