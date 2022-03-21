Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BEBA612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647894085;
	h=To:Subject:From:Message-Id:Date;
	bh=YZnaQhUhr6rllX12JuOBQXYoWBmAKjQif6LdxXIrKag=;
	b=KNFEkSSxcEUZs6Qvwn+qf76npSXrdL8lkWqV2Jh+RTiEPA40MJaYk4d1HNB9lYhG
	sKPUbFXtF+7ZmxvTZ5z6l8gWgncgyFz/oUc9JRPaTRmVEHYSg8x+fSv5n3eKUgifI24
	auPRuI9ghM05k2vVm63box2RIsWBUDAcp8QfFINg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647894085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YZnaQhUhr6rllX12JuOBQXYoWBmAKjQif6LdxXIrKag=;
	b=gKP/AkPlv8Agz2ZWHOOcvViOKxom2X8QQoiPUK1IM+oXQJeGz08+aRO9ge2KWNXu
	n76T36UwyLmw0XAHjFR/ne+Tk8vzi+vI2SM853k7g6Sqck+RNiGJrgOB1oKi8/nYxpg
	xj2BMU2S1hF3+3+4D2V5EK3dkuCzxvtx3ZgPuroc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae243cf6-f608be80-bbf6-4e37-a03c-196f574b3128-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1d30a9864547be2460fe75e111fe35b85d9922f3de4ebe62062f5eb545b2901
Date: Mon, 21 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647894084
