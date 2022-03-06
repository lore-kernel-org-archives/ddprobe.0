Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D4C1FD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646572584;
	h=To:Subject:From:Message-Id:Date;
	bh=A8Vl5MKO4QJIjMvYzd7M9+bqzTRQ0JH+RHxPG+p0HzU=;
	b=k2v7Z9GIWyhsZiWlmrK7NaYZbD1yp3MuMXf/iAEQZslBSxbm/bIO2LCB+YU3HOua
	ACmnmV1TJ/rxffqdpqwf3AhIJKoZxtvAin52OKxKYjhkwl+wyzS1Bk6sOhEi/TZiV78
	bDdyVD/DBcn2OH/1wglia3W4FTE5/+KsQC6OBTlI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646572584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A8Vl5MKO4QJIjMvYzd7M9+bqzTRQ0JH+RHxPG+p0HzU=;
	b=NzjsC6ux2N9rPqy1jgHElTXiQr/OVr/+ZfQK05eKBEV/ET7YHUS1hCKBZCm6a0e4
	WjHucTlQiVrOEzZg1x1d1nTbE286ZbuN3xr7gmp/i6dNI6sNtLXwuwevkjDV6FrHtrv
	lN6Hjk6H0wXsNersKcbnMxFP0uY5dcSdJl822Hs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f5fbf36-40358db2-1a14-481f-8900-63fec4fce2ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be5e79b8bb55f49b0367966743baf9d443febf665df2eaebfd881df818318db0
Date: Sun, 6 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646572584
