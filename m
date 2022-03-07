Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2457F38E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 10:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646647885;
	h=To:Subject:From:Message-Id:Date;
	bh=TZo48W7HFPjM9ucRavC+SaD1/fm6cMfrdkhqrqWif6g=;
	b=Nn2ryYij03HouXCgydqrN16eh2bPkJyuU6xCrsDAmwbzDg0hnYGXckGvuLd5M/AY
	/hM93K6Yt5YAjiLABI/NYmB6oGmYz4pl6cWaF2CBpUX+pj+scDt7GqcA/IKzQCFFHkY
	BhQhuQRofYwVAfDOoFBcQHkrDYFVHwrNojBj7BZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646647885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZo48W7HFPjM9ucRavC+SaD1/fm6cMfrdkhqrqWif6g=;
	b=Dqqa8Lm/Z+Wl0xV1nRHPJ+qEsa3d5ikDXn+jF8XnVEs2sTMNrYaL1nl0YrbfkJxU
	kBgff3W8HNcL1jK81co3Xfl4FQu2mV+H02oxF600S7xpQW4VfrOAhHLb49KzgL8yCbw
	OFzdsB5pjZBiuCLcLncC0XJkj+dif6QqjvzxsjpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63dcbdda-eea307f6-5e7c-42d1-a946-7b4df4a9cb99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a14d322149984a705a1463da39e56755e1282297e1f322d59c1f48dda0eeb59
Date: Mon, 7 Mar 2022 10:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646647884
