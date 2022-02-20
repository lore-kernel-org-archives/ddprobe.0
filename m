Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E775EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645380984;
	h=To:Subject:From:Message-Id:Date;
	bh=U6QdLfrngXv/5IV3uuP1KNbk8DHfxW5rSHmaL4svl98=;
	b=SoKk/fazFwQjDCEDeW1iZgzMj6tpQQDpvMUApwFX7FQ91H5Y8/wXKJA4WChwnlpg
	J+ZR91nOFtRF71p3jUqagT7HbcTjKPmG8JuIcLFk8tTDQouv4So8SnXYIH6cBy9mvIO
	gzr7zl7Hi64lsxI69vYpVBQcPsIBA4IwjNVkmxH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645380984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6QdLfrngXv/5IV3uuP1KNbk8DHfxW5rSHmaL4svl98=;
	b=GRVIIU5mLb6qaG+vHIIs0g6ZhX9vmIe6qyQ096Y2DxSzNLIWa7mNx+3simK/522b
	LaP5aYKafbn+R1OiaSYWPvPy7nm2LTWwbzDAo+sZ3O1ep7A+llVFt7K6tLOh744+5Gj
	1r5yWeJmeWfoZedZHzaI4MNCWo7Bhv3kzOAmwWFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18595f9e-07473358-4ee9-4120-9e66-a93fea2a66e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ca773035ee8e37eeb4c23035398942a969a3281c3959e3b36b7f93b6058fd9f
Date: Sun, 20 Feb 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645380984
