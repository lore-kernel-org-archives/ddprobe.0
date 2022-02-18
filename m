Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A430748DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645188985;
	h=To:Subject:From:Message-Id:Date;
	bh=i14xSbFF1jvdkNS8hrWrbVjb46Srk4qDSt55xttXBpk=;
	b=az3Vb9Rin4gsubpxHAV4jgmdkCrpnKpZxY9cVgqpPRf4c3TzTmrFp8PSoX1ZU97Z
	+dax7MuOz+o0DBVnvWois9Z08PUr/92UBpRzgLFdbCZbzk3NCiA3hrGhQzlIrnXP6uT
	Vqv/hNdUg3wI9nCwZiCJYPw46PHnnKZ8B2PkYFMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645188985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i14xSbFF1jvdkNS8hrWrbVjb46Srk4qDSt55xttXBpk=;
	b=XyLSnc40Hc+DWenCQkCzeFl5Js4A8RULmsQ8KQ/8zSd16mgtxkdBFp28xS5D8Hj/
	e7wFJTBGNqL9skCp/rSjH9FpG/uiw+CKVL42vyKEnHgvNrEYU+6cslEPYhJEFkn82tS
	qXfhftcC9CRyLbFeXTQWs4XNhm5R5CzLFmQdoNQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ce7afc4-a95f9322-9a3f-43fb-a846-d4c23acc3d78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63bc1b467a3cd612053d33792d792014e9abdb7feeef7f7b05979e4838ef43ee
Date: Fri, 18 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645188984
