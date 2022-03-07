Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D50D7482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646695284;
	h=To:Subject:From:Message-Id:Date;
	bh=5e2ZxGlTmMktwZmhHMN0fgrjMoomNHiFLKIpl1kQzuE=;
	b=BKZl43T46GYumQoOQhNFWb2b7ijCxAEC/ITL4I0yObLWyxnQOMK5KSLsXzXN9sms
	jfZlddtlEAvxr2WfvUSbQx97pDG42UNouMIkMNngS/JPGl3KewKozhJ7gie9vKPI8Vq
	jG4Z6Uqhuf3R6ijd5yhqDiEd4C6CkURfVVXNmk7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646695284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5e2ZxGlTmMktwZmhHMN0fgrjMoomNHiFLKIpl1kQzuE=;
	b=cmCqCjXtokXvqzBdN68sVkBKpr3Yb8ykpFOmRFKapVFYBs1qV3u9LA6lapFGqJw1
	GA4T1zfz7JuhBvlQ27rxtZ7iYwh3I/hT6TMLTDDqeJgJR4hquMZDfzsuzk3VuHn5Kf7
	0nTSaN70L/gKRgN5dd17LdqiN2bbfkcKHwv0QdK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66b00053-f1eaab2e-d3a3-4e4e-9653-e4041ad51063-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceee89e24d8fe02283d41bec2097fc1e3c51439eb88a805d96c6045ecaab2682
Date: Mon, 7 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646695284
