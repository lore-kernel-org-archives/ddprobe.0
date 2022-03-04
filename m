Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40716AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646437285;
	h=To:Subject:From:Message-Id:Date;
	bh=3rJJqaxZcuOFg8xQPp0JHV22uhQBoMtdKyV7nIAYqcQ=;
	b=XnwlBY2hU6dvp2m/Lsmd5c7BPJoroC1Rqdgvd5rjIUUkPdeo6XfylvYdfwUbLHDP
	vVQRPS9OHZWwT/ScG2D5MIoU/C66dcjOqi0K4Jzksp6M0z3AritNyBG1YyVMXL4Nppa
	jXChDppqDcDGG7GOwJeJkh7dV2gkhrX6V4RVJ0Qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646437285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3rJJqaxZcuOFg8xQPp0JHV22uhQBoMtdKyV7nIAYqcQ=;
	b=BtHtXrxnWMXL1tJT/HUwF5L5KaKgsxLN4WakUFaO/4p02nfeVxBc1Z9q5k5+jKbc
	S0qB1XcalZ6qIbtmFadlhp9r5WWExWTuPYZGJ9KBMjyQYZJv2ENEntdxpwckW42d4/W
	vZi592ABnEv4APrBi8e8Hy3WlQbtvVQkk3HLC8FY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f574f3bdb-677efc75-d7c6-42dc-971f-0dfe363c5f30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69517c6bb474c4af4e5cdc53f5c201cb631272edd6377745faeed904a3a54b86
Date: Fri, 4 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646437284
