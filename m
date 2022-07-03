Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104E41FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656860812;
	h=To:Subject:From:Message-Id:Date;
	bh=X7HnBjf9TuJrVFxJGVsmoJkmjlnqGWLEnvi9X4J+lmo=;
	b=kd5dxdtfKO+qH7VuyWWqyUrV3l87srUlVVjxNyfe7vAO0wmJFQatFx7BcTkwI4D9
	lRzfk7I2f+kN8s2cu2rT1gzlEwevslObrjtQJI/v4K5mTpDMiBOGGGI7TbdqPtimjh0
	2VDaxTCohAWST8E84OSVvLowETTelFH54vHMC/YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656860812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X7HnBjf9TuJrVFxJGVsmoJkmjlnqGWLEnvi9X4J+lmo=;
	b=kbSGYjl2OCYqik7INMrR/ORjD0RYR1go8MnFMgg7ZFq+LV+IYnbyhIBodGHOjngR
	fA4yBmsjA1TIPFIeyoLek54uOzgDGgA4VXEl7wkIVWqAJBL7gCF1dAmYhPWkvbLyVX/
	FbOKR3kujG9owAEXsNXCxZlh9MJzYqyRXLvJNcO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c499a422-ad28a35c-51ce-4fb0-8cf3-221117eb85b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9402ff44ce3bfaeab09bd4d94e5e3b4c9a905ff9061398139b15a18ccfbab07
Date: Sun, 3 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656860812
