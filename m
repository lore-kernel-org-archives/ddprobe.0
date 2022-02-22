Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5C27B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645548385;
	h=To:Subject:From:Message-Id:Date;
	bh=9jQOQc1DnZUykWjun8C4mlsdRkdTF6XQnl4MlcdAKzc=;
	b=ivuzxF0b5jtRYKCVy5VuxWngnCbYhGqcEganJvkOYP89H0UeRWNp3JVrWWyMQ40A
	gNJvOIe4ffO/sAaSJaN2ESqJ6ckg7bLgK6oHo/PxLXRq5uJ5/Kgt3dgVczzxC0L2HEP
	mMECviHRwKJf197IGJGwVfYzKPZNNWoaK0FEtvYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645548385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9jQOQc1DnZUykWjun8C4mlsdRkdTF6XQnl4MlcdAKzc=;
	b=YuzmuEqRMqEwEKBNEdJnuiJWlM4H9NuiMSOUkePJu8h/MFtlzuRil4G2XzmY92F9
	l44jzHq4cNQ8oeWkHl6GS3Z/skEEx2U4kSqhdEpmdG8MOpETQP6w4RCJyjBs9dLXOvj
	mPOXxaQXdTYu40HxMv8bw6uZ60J70TMH+utGouc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2253b27e-b8713872-0bfa-492e-9715-5a710121f546-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48eeaef9f3b50ddfa801b38b6ddafe14771fd5503a4d4b61bacd589c065b87d7
Date: Tue, 22 Feb 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645548384
