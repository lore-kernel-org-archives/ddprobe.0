Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334C22104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 03:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646190385;
	h=To:Subject:From:Message-Id:Date;
	bh=Vi2eHiZa/xN0zBtDrsjTt/Ii05lfeNNQHXCXiZnwzAc=;
	b=ZUZQRUJ5TuDRKgdAdBUk4dFyKBnaNbC+qMWnZ3VU2SC7oZ0cj12U2sTqu0HSZmCs
	tE5dAc5Hq7w3rPkO5O9gVyv/Gu8EvOOSJABZKngClkWZtei3/wiarGAk+aIcFzP3OUD
	YDdW3zjsnaDgjPPTRMGA8hHjt7h8nRhy1ZLzLDqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646190385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vi2eHiZa/xN0zBtDrsjTt/Ii05lfeNNQHXCXiZnwzAc=;
	b=O1LTgCvscObE1QtVEnAUD4U+IqP7GimLIDux4rnLQJHJjihZsLX1uGkFPkq0LVRG
	uDMBCj8MbVvkcTWmk4iRPVH6740bFBSMWzPZ7LDE++J2Z0Xts9xtMQgyZgSu8Lbk30f
	yjcbXV78xuRC3ltB0zZp3T5oaFzkPwrXGphzKk/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4897d763-9980b747-8e97-4e32-9621-6cd40c044818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 568989ff001771391ea9d459cbca8b04c4dbdf580f8df48b6d59d99d5bb5aae7
Date: Wed, 2 Mar 2022 03:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646190384
