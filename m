Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027D97E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 05:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651039018;
	h=To:Subject:From:Message-Id:Date;
	bh=CdkSs3wLGcb8f6jsTcMEGEfHHH5+ZvbGoaqWGjWvNFM=;
	b=By9g0f8Bh0kYSJjkdmX/pbKmyD8bHVSx5HMeab1ikt/ElJLWzOEyUf7zRPQ5mHpa
	E+BQtldm+24ed8eDQb04TvtATr6lFyDE2zvg7AhXW7zafcKpqSqmG25lK+yJFJtunIn
	dlSez8VU6EiEQtRUlZs6koSH8lgdwY7xtW+LCwII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651039018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CdkSs3wLGcb8f6jsTcMEGEfHHH5+ZvbGoaqWGjWvNFM=;
	b=TN1d1Pde+upLA/n5TuX+mBDrdswAhYIKruMs8T0bbfJ3J7qycVAvMEf4aAHheW4t
	lI6T1Ysec9i5+a1qJlibJN0VJZfQYvRC6MrsbuatYJEgvNjBtKx9p6umFEfA6QOtMow
	+uPtxVZl9Z8hwWVlWRPXLdk4k8PdpvSf/ZJaX3Zo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069981d2f-ccd27835-88b7-4930-9ad0-0f8958298555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7ac052c734383257506e61c332e5e284cfd70f74ec6b281290e708cac65f2a2
Date: Wed, 27 Apr 2022 05:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651039018
