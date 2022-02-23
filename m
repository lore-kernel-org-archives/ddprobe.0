Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B324B7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645603285;
	h=To:Subject:From:Message-Id:Date;
	bh=/IUnmkcLU5OcoQEHzggsxR11JFCF1DbLDcN9JQQxo5M=;
	b=MnqfXUC+ph571uHu512Jw8YCko3yAi3N+rGnNhz7rCikturIqcel0ozSlMzXVkyk
	83iC/9SjuvX7H3hOBDshdb7/E03ocFPlAiicPivGgAMAPcq/mmxpngMGm0qbcOvUo/W
	5tz6nwrGamwhuEwCJt/TRFF/GqeSZq8TgdvU6I4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645603285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/IUnmkcLU5OcoQEHzggsxR11JFCF1DbLDcN9JQQxo5M=;
	b=ZFYPnZhupRp9nzzgeNSQS1evBV8XYrwV23tLm1lxhv9SJcZt8/kNQ39TtRGg0kas
	nAwT2pwRcNlD4y0hhaaamGX46chfWR2mKmr0qlG+UL/TC66y/wAkKbMgh3C1sN3EX/M
	8HJenUlDtAfveDGSC2QVVexjM6+c1PYv0uH69nq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2599682b-f14642c1-b32d-41c8-8ce1-0dc31da923b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1021cb0c52845b3d87fcc5ce5100cf44c5df6aa9cb82f96d6b15c527d52f4f90
Date: Wed, 23 Feb 2022 08:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645603284
