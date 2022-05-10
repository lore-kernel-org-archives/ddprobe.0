Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A9A290E
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652200019;
	h=To:Subject:From:Message-Id:Date;
	bh=+OtKqHiG6JNpW8h4KasEvzzZAPaPoMF52Y9YFmzmGFU=;
	b=OjMjy2RsoyIsjO6AQWu5RzwpE3eYSJ3xjdFh7kAJW6nJdA5SzwIuyg2N7h9dqrPr
	RuNe+HxLRbiEcfb0SeQINVnEYQJF6LOWMQpjNDPkCRWspl/II1HXLC2OMnbow7DUYCT
	RfUxowfJcw0MqWicX2/Q6eVZ/o2XlHX5BhQLCwbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652200019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+OtKqHiG6JNpW8h4KasEvzzZAPaPoMF52Y9YFmzmGFU=;
	b=ix653JDbS2RGW8jEb2JnE8es1HyO9chXGFogH1lOEHKxJ8BSBJaAAkNFn2Hf60cW
	TzDzrBwmRnAYQsZfQozKXkB+VyBYOBGHhfa9r525PDhp977+DYjqnTRf4Y4dT3jZ7/x
	c4/mN6qidMwJTJcsMs73E2NoApbP5vcmKuLz2XdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aecb95c5-5650d0a1-e958-4200-be29-dc51e9e913b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c74100c9001f7abc1e274a51e3e6917f7403a21181150f83d694aa515a9bc0d
Date: Tue, 10 May 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652200019
