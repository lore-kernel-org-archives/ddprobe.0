Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B0F7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646482285;
	h=To:Subject:From:Message-Id:Date;
	bh=VdRQHd3KJpL9IFMN6wKsTrbwQHTHJyvSFbcI8tlAh2c=;
	b=iqRBHx8F5WREI1cmA7tRuJWck8RUM8TsNGXcXliVPUWhADSifGRR92Spnt0jVwbC
	lVceW/wEjH+AlwYlpgxpRwXXU2y8KhePms4BY4D+R5J1UGQwE301ikbBAr0Uo8xYmkD
	aPwqCpLbud+ePMS1IrFvjWRvUNCjOIlxbhqdJUx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646482285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VdRQHd3KJpL9IFMN6wKsTrbwQHTHJyvSFbcI8tlAh2c=;
	b=cCvCs3aiUZ690YkpzvCYDQXoAit0ngD1ve747IKqGHniS5MD+eaTWRZ38ExkoI6G
	/pMQBdQppxnOJUNAedB5eXKVKfrV1e88z9yqRR1BPJB1mZkFd/Zb32YoLkvuvgm63E0
	buAue/flzs2S4fZ83QOolA7pJl0ec28MjmF20PTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59fde0db-97fdf0ff-7423-44f8-b9e7-c7be4abced1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5bdc414fe8aa3ef15b460463a9f5117664db90f75b01d80591ff0aa73dcd4c3
Date: Sat, 5 Mar 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646482284
