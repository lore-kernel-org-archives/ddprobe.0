Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E536450
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646793385;
	h=To:Subject:From:Message-Id:Date;
	bh=laCDLh2uKQjh6GCweQAEyEsAUy54yyvLrr3FHWazhnI=;
	b=krgsOEvgigCtqO6hszrnjlVMxxuxDvmh6mueIl1ENRNSX7hcLfQwN/5WRuGO62oW
	G/oXrBq3jUtAK1ynn+XAPHbC6YB4iwjM8dp7+msiWBespeYUEhW71ovdSU+pNfQsub3
	vjE3EDMxFuZD6ZJ+OqxReLzdCbZZdVkyQAJP5T84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646793385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=laCDLh2uKQjh6GCweQAEyEsAUy54yyvLrr3FHWazhnI=;
	b=ktLzhuEnajABI69FRSZHy7nwVBBTjOhVKJPvrKDwb1s7B28xtwqlzkoldnkZuW/P
	GmX9GEqufBr8ZB3l/MjsFKYk0TG18UFS/n8KFGy+UOHoodeC9u4qy0o1i5Y1rA1lGc4
	kbby0GovL7MAP1xsHpQJAjqGKM6+NAmjdQNsFs7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c88e376-78c3d9a6-28f8-4e68-8a16-b631b78d7d4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22ee41c8eb03ff776598fdbc4ae9af70f09c8a16ff22ac4d3e791784ce3c9e84
Date: Wed, 9 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646793384
