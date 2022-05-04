Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEA733E0
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 21:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651698419;
	h=To:Subject:From:Message-Id:Date;
	bh=zxBWd7mDrV7A4RxxxKpNx9EfjZNwThZnLFC8jQuFIZ8=;
	b=IjhPKXEUTISUNXLuvyXgdZcT0tkOBnzrL+l3jdidXW4H/zUmayFDZFnfYf/ha8LK
	5kiAhDQjcq+eYz3gTI6ba2dqHyq8R8OOG6jXB0BDXwhlE/6PWDLHKf3Ysx7iXI8u16k
	CYURSpmYEj03jwPohWXrLPkZrtza5x3J/nusk3LI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651698419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zxBWd7mDrV7A4RxxxKpNx9EfjZNwThZnLFC8jQuFIZ8=;
	b=VQQzN3qbxVOjV+5T3eMGjv82Y7O5GQd4WPqMe0rENUMTWEvnbjDOthce65mBUKje
	cqOGvzq0iWckHEWEbCs7RawBs94ZBSPremJnn95B2o2yVKc4mHGRtTfQqtuSGFVpQRs
	BjCYkGRhHfvAPnbM3OiQhgQMkOuWhwQA34P5S0Zk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018090e5c271-cdaf7969-2279-4cb3-8f84-bf6fb4d8c4ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 613829f8336e44b9f8927e602f46ca677202ae09e423a001a327e62b5e393d6d
Date: Wed, 4 May 2022 21:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651698418
