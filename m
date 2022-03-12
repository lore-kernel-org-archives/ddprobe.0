Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932CF36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647047784;
	h=To:Subject:From:Message-Id:Date;
	bh=s4Hjrdq6XAK7hj5CLwVfuNL0OhsCM7FrlehdWGvFcHA=;
	b=mPdBj5Dt/EsqJ78GzETZ0dt0kFG2StHq2csCQRvxEZZnyHPo1SlftmLMxglt7h0+
	WyvuTInb9R3NJNYKVL47s0NR9IC3EPWVk1oHGWUJq08TU7wapZl6I21HF6g2B/ewrYy
	6WVXWHNJXxCcppLA8NqKvlKSMHHnPvm2fhk+RIcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647047784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s4Hjrdq6XAK7hj5CLwVfuNL0OhsCM7FrlehdWGvFcHA=;
	b=aYciyRXhrVAiMuQtkxqvh6MiiGe61XLHqRk5G6K57Oozkrsk2ENo2UtjmDMtRP3t
	bipTJ0AfK3Lf2UleJqk0g+1s9S2p5GWnTf1ebdZ2dw40NC3zI+kVqQt72HiQdEF0dFU
	BSQx37K6PppCrYhfJW2kp9oLZmpfmFsOi86smZVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7bb2b938-f711290f-e12a-4da7-bfbe-cd73c272752d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c78840feac7bbff8c6e334e52a75b51c4dfd302c67fac6b5e71b2d5664dfe451
Date: Sat, 12 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647047784
