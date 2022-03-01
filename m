Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85DD5CA0
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646149284;
	h=To:Subject:From:Message-Id:Date;
	bh=7PpMZrlimaLcxiJhDfahuhRapq4/xpxzF7fZVZhm3bM=;
	b=c7bdY7aPZbz4CzJWJ9zoGr/IZStoghwxIbrzYcGypgpUXSag4DqEMoV3KNMhfcnh
	d8LzSi+k2dcheWc/YY/QazP1QDEr6tfq3SCj4xxzSRd+QxWX6ko1NJQAAFVD4f45Q3B
	zGtqAcunfl2r3B/65z65Xnbv+5NEdtsZCi+ynNb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646149284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PpMZrlimaLcxiJhDfahuhRapq4/xpxzF7fZVZhm3bM=;
	b=agZs4zoVQg0YoZEmBip8F3oR2l2Whj7ofwF2Rmaa46GU01NhZqmO19EqtJ0oUhhN
	/yM8SlBgFm1ncQ4xG+wOrJhNR1YTpodgaJ9nR4gf9HXUVzh5SyJPZl2vC69PuiCyQUV
	P25hkn5ED3vj+ok/9G71RtK+9RvpO3eO9zGGM4Kc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4624b39c-96f35bd3-d262-49a0-9d2e-7dbf285a4d85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccb544bab85e0842db84ea1650a83f2bce2905003f6ba51bd5450ec7b9d81a1a
Date: Tue, 1 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646149284
