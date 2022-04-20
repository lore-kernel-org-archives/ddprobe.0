Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B59184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650463558;
	h=To:Subject:From:Message-Id:Date;
	bh=FFLFIT2moQC11Baf82vHojNWIGk8dqQAmdSBUoD7jWM=;
	b=Hh6fV7okk/9WWcahsCt1opbDrBL+wAq4cvRjEpahCDToA8uhGm+zLl/dDpXqE9dW
	ee89df1fwTQdO5+kH5+JZX6RWYckLb+/LWnM5abR/ZxMR80Ar8F0zwptye5XlCKjEHg
	njJqfmFYGnCZUiFILYQ76HZ5VYbIXWN+v2w87U30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650463558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FFLFIT2moQC11Baf82vHojNWIGk8dqQAmdSBUoD7jWM=;
	b=hT74OG30DMB+zeCfjGXwMVs7fE7lmWY6vp0AvUcR3GSiIT/S16XxtJD8pm1787su
	A0Z3PiP2/MCb5TA49HAapuwhBiOfDgosXPcVHAb7kiGinzIDbMCXSbsFB1iKWmYDAJ+
	p1Mv6aN8ZDzd/Rodz95ZO0AOKkAbtIJJq0HuZy1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180474b4a77-6c68f007-87c5-41d3-a4c7-aa07b95a7c27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dde814e81224822d38e127eff4a2e31a0a72aec070c017770c10e90536dc9c96
Date: Wed, 20 Apr 2022 14:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650463558
