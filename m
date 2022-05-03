Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5392F44
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 13:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651585138;
	h=To:Subject:From:Message-Id:Date;
	bh=5kGd3gozJwOp2yIxJi4LKtghK39veHs660fHvTUmBOc=;
	b=W4P+Vw3iBDrRaR8+qifJg+6w+8WDi2F9eOSx0if3ORJGydv1ACFtSV6Mc9Kv9lSX
	Mj3Ec9wu8SDu/oP8E9LQUBwrg26LfinfT8EnEgoTyYs22lcQgHRSVVWeXDQjYzTm4IU
	Pe2cS3AbLzMaH7KQeZtATyA4k2YxFmqoF6bue5kQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651585138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5kGd3gozJwOp2yIxJi4LKtghK39veHs660fHvTUmBOc=;
	b=TV1gSt9XPGQzPYcKOm+zUJYXX6mTZey4RBZVVKfmuAxLIPJvGG00zUVfzdJ9Eoza
	d+X5aqAHxLyIot6WvteFoUXY9f8s2M7zpkqqq7dfndqyqwEa9MVtlZlhkBbfbLOboSO
	SAcb3BD+s5X3fVhm4KZ2PN2xqJItzus+0U+Y3F0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808a253e51-39460312-6e56-4489-adf1-e58cd627ffc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3e37a42f40e42b97453100a47333f318cb7cba8e6e21c775ccfda105b5c681f
Date: Tue, 3 May 2022 13:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651585138
