Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919B1A29
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 04:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650342718;
	h=To:Subject:From:Message-Id:Date;
	bh=nr+GizQzgMvLOW4tXLtN3jkptTjkCzusz5Y8vq/s1Zw=;
	b=VXTTcgvEEzjMo/WVJKgJm/eQH2sTP3gF2922dJLSSvw+45mmfkKR0LYrwK9fJj5R
	F5vaNBWhNTl8RDbYwPQQICjDr9dGTMIhMsBcuwsvyrI3ZdkVUCO6PSAZMBdprPoNzm0
	cMiDVy9Qr5BefpSgfw8tuiCaMESEnAe1tI5XxHdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650342718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nr+GizQzgMvLOW4tXLtN3jkptTjkCzusz5Y8vq/s1Zw=;
	b=PKQGubyQmemmmtNirgOUKtSvD0hLEuRSZqcsI3+EBMnZhLJ+YrBwvdZskn3eYoFJ
	XuMz8HqF9J46h6+3/OVcyCwPket29CtK/n7Of2mpIdoQJlSBOLByfQ0vd0lPmg+m1yu
	yhLFBFRcavx6Z4kS8sVj+5aBjdCJOENvMfYV/8A4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040176b98-aee95c72-f329-482d-82b0-2ffc703861fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6de7999237b3001f3fec4075ad8c10197bf48301d3730975171695be5d16be8
Date: Tue, 19 Apr 2022 04:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650342718
