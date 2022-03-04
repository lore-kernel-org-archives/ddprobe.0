Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E59815
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646376984;
	h=To:Subject:From:Message-Id:Date;
	bh=WAqcvjVIimLwP33MwLC7CUf8G8qoGJ7b/EycuK3ZleI=;
	b=jou4aoB6+gwkX7xHZ/BLcqbjfwwO3s5cFXAasxl6ghJrQuaSkQpWfSHC/PMH0rof
	gENUjZnryvMZHwwWP9Af3x5pu0MeT48uk9FjYDl2Wpw2aEm6vnswwPklEtES7MYC9fF
	FWAH7577lAN76osrQ7BIH1Shk9tjlQQVhlrJ1ung=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646376984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WAqcvjVIimLwP33MwLC7CUf8G8qoGJ7b/EycuK3ZleI=;
	b=cp2FL+50vAIYH2buds9rqIvw+qIcvZ9cJuu5CPSSbjSwKIsebZ4xlqD3f6W7Mcqa
	Cy1Am6ea9a+tNVpJxduyeSZ7+RpEeZw/HgZtx68zHBZ0eJOMSodYrA8rZ8KVVeZQVrn
	C/wWeCC8lHEblaXgKxRVecZmkzTLAkVmcXvD+Kr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53b720c1-9fcbde86-a3d4-4855-8d1b-5c1b049284bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b97bbf76b863b37e04969cc7ac2bcd5edc8089c1e339fad7b5b5cb7afacd5f2f
Date: Fri, 4 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646376984
