Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549E94296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647090384;
	h=To:Subject:From:Message-Id:Date;
	bh=uE8SAW9uzMnB2HbuhtZJmF34l5l37FdNP0wtODkyP+g=;
	b=XqNEuqZZ0K0aaYnsJyFglUK2Q4PPvb1CPHNuvMfhxJeBt0CZ3Uo1VdK/QzS1CtcW
	bgs9VnM24jrnuINhlkoz2CEj6wlBXA6MmST/QxPH9BClMlw3hhaFUeCl/dOkcA7yEm7
	wMq67qRosE4W/3+BJU4gAnv9K6xLaKS7omOH0SC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647090384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uE8SAW9uzMnB2HbuhtZJmF34l5l37FdNP0wtODkyP+g=;
	b=HkRIzpkj8INlNALMSTqLZBCiMYQ1aRP5Y9TASNBMk4MKTx3gS7wCiJsQ1Jk1w7My
	V+9KgAuzfX7YeCprOZPItAUN1+dpW9N1CPL/SGddQlv3ESFxh+SD6IqMk7geSgxXqcD
	YlNFQ+VMP4nWzd4nUf3FL2wR+qYrKEkm39LvdoWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e3cbf46-6c607069-3c57-4675-9df9-0198543cd8d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 490fcf90343502d0b924ee852728a2a0bf80435d282eb1e6f0b0d44b49dd531d
Date: Sat, 12 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647090384
