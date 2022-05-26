Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44BC139E
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653576359;
	h=To:Subject:From:Message-Id:Date;
	bh=fd9kPjo0Q8OsD5KLfvfnLWzNj172S0Y886/HJZSLPX8=;
	b=hS6VDv3066uSnoS8unT4+wR4TAKLQYuTDzp0ks2dx0kKmI8tXH3AB5rVbEoCX4Lk
	6lGv77lLkQsenOrVrLA5C8ILDjN1kyJbtTXvnQYVRprREsyar3To15C0D2X9Ce4DLER
	wMnKGjRYs4sI+7Fpm/vx1tICNPiiIHGni58Iixik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653576359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fd9kPjo0Q8OsD5KLfvfnLWzNj172S0Y886/HJZSLPX8=;
	b=c0UBbsgyDCmGnyM3WZL7HxQITQ14mSbRZFvQm8LujC8ebgVP1WoaOTR1JyGwhH/0
	in4zLHx4MxHQlBYc92DO9HQTnXq2Xo7E6STDrkwvMUJHfdt46XFdYp7Q6lz0OtExdjr
	p6J/KGQPK1L4XnSWNnzBDihr7I7Pv5aY6EEV+oDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100d4dd5a-8dcd1339-6f4c-4411-ab9f-3c2ea9ae47a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d0b0ac9d6a0c25d37f76a9905b9237160543e3f934d04829ec4e0f1144aaf71
Date: Thu, 26 May 2022 14:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653576359
