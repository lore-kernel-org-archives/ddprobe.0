Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF4621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 02:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651026478;
	h=To:Subject:From:Message-Id:Date;
	bh=cNO1GDjeq30/oo9HQrnQqgQuONcWCGrM1zaLNNspgbo=;
	b=TjUI4VmTBbDeIQJZgqZly0fq8vhQZ5d03mTL7xs6iV+45/4PL3nsgyd08cTaq7NO
	yrskrirKaeY0FNxkTaaFJxD+HtBYy4RR3jWcB+8RkJ1r2fdBfU3xzrUVE8ls+rHvBwC
	iCQxJbU7h/BC9OOhkYMplMth7vz3VRqA/cdkMFWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651026478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNO1GDjeq30/oo9HQrnQqgQuONcWCGrM1zaLNNspgbo=;
	b=LzHBXA7APuSDFayQDf88RNpJmcp8Klb0fkDXpjrTdQ8UPAVIyfglsyccekXYBGkv
	gPqiVCuV5JHnZXjlhms/Dl4FLJY8V/6LpwPgAER3/5/nl+N2MwQ8+qLorZv6Q9P12c9
	9hs6gN3QFx+ZhwPleHhkwJasg6w4dajhhJTMPXiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068d8c4f7-32e2d5a9-5104-48ac-87c9-3bfdf8ae1247-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4409c312536ee48b4cccc8d719ca9e27a9c8929339f1e609917575e7d0953c21
Date: Wed, 27 Apr 2022 02:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651026478
