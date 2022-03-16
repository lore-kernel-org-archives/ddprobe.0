Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631EC3B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647462084;
	h=To:Subject:From:Message-Id:Date;
	bh=WXV3wmWlgRlWxQdipuZwlUkpgL05N6vHssM4HI8CisM=;
	b=lI8l8HLrXGaMrGSVEoROuFM08Z6ir0U0Xp4o83/3tIqTmokVswzr5KVi0yaiwAid
	nEcxmuZ9QU0gNb9QLR/KIQj8EbORQpvmYbBA1z4vTn5kmnYZAmJMq9KEvOm7xzXQCW9
	cHdo3k5sT7n7LZ6Owt8fj+gTjxKjixk9kY0zGgPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647462084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WXV3wmWlgRlWxQdipuZwlUkpgL05N6vHssM4HI8CisM=;
	b=bvOJeBRDNCiBBcJyi7XDqLQ7s2KkexGmABfzrRYiw9l7xKwIrvBOGBnQtYfysJPr
	TjviXh5Wl4BX72NMI5QOkcn6hbzeANz5gtWd90xj04iBxFeoBxz2I76LROH1A0XUaE5
	KkfKOjjN6/idmt81Btwa+UmuMU2NPGGgh6/yce1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f946470c2-b2fac364-a121-4089-b3b6-c0ebb6b9e030-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35fd669a5332c90d45618f73a9a9559bea0d0ad786316f18b37b2859d873a1ad
Date: Wed, 16 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647462084
