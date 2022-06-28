Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1153D6F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656436012;
	h=To:Subject:From:Message-Id:Date;
	bh=FCs1RQTN4CNWvk+AfNVekvePTZ3uSi8AQAW5eNCKoDA=;
	b=Lvtuo73tq95pAnC+hJaMZ6egTdeiy8OnQIEhF+nUGmhuevyZnfEf8eliXnT7koVn
	DZdChPEotRU5Zd2q165byIx2vM21mgenzG84H+6itHt/CcCMoI3kAtow+fN3w8G2v8s
	iBF6pyW0JvEHcrTOCnTuE6Of271TUTFjAwtHDuAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656436012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FCs1RQTN4CNWvk+AfNVekvePTZ3uSi8AQAW5eNCKoDA=;
	b=QJXwNkFoXj9lbUoE1PL6GbSdJdbmI3z3oDp5pSCUyiuJGCNB8y2dBJdY+wxIsRjP
	OEz6NvRMAWlugYvmTbMWm6+Fi8hLDHagEU8LQZNVNZ9E2s8Fb+mCihy0dq+RV9f9w5J
	1VEXzGvvdS8y0DqP9jGGrP6XvZ/NXdMqEuopghe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab47b4fd-f5d593e2-b12e-4e50-8101-3b7b03bd880e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1c5dff0e2bf25c21453212f906f41ba30adb1f5866d5e7ec2a4e7f48af75671
Date: Tue, 28 Jun 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656436012
