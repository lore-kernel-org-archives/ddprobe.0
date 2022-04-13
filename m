Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C328E0
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 09:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649840938;
	h=To:Subject:From:Message-Id:Date;
	bh=/eJZWxdTEHECCuYqVVGB2tO3NiIQHur6oKT7XUWB7Zo=;
	b=KHV2K3auYCbogebuw3flrW1K4JT3ptRf5Q2vbiATjPfsKsYuUZFgrFZcBZ12KzqB
	YypE7vvfwHYUAk0ekly3nU7HRLBc1qpB0Rv1mDgorUGwkqk8Ls8CtMSpD25rU9Jy9QA
	K/XihPablzbaV/5izIhzdBeu/FUlkkjFsAsq8mo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649840938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/eJZWxdTEHECCuYqVVGB2tO3NiIQHur6oKT7XUWB7Zo=;
	b=Vv1iL1AxnUHsHmK1T2cXC+1BET0Ke7ax5hDOLGV7X5XiC/xzdiFnWvqeLq23dAkr
	dtwfu4NJA3LHBJnYzUt4XycE5WOXz+mvYlphbMYgieeTpGAvtvTdgn0Lsgv19NnB7x2
	o4wKehHyPjgYKu+pNuTFTBjkiRGty1Qk06LXltq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180222edd1d-ef954797-e7f1-4439-b5f9-43c54ae722a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10cb3e200164b6f3f62058630ffbdf0f1a70c069398d46006a875c9ea81faf33
Date: Wed, 13 Apr 2022 09:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649840938
