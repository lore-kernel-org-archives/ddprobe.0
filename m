Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634497B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646838084;
	h=To:Subject:From:Message-Id:Date;
	bh=fSFqZxGmqoH13mTdAzJFR9zMWyNIgXP7W81TKIloMpk=;
	b=bZHG23Zuf54s4XoNO6ZM10YBcqq/6+MWZNeNKRhTk45BKjlsuZ4ykFzucI2gCljB
	AkqBTVN69StAQ+oV/qlJ7rt4xO9Z3uDZCWqaeRR3MPRWq8xzzPKopUrCI6IijL7Fqj1
	pF9FwjALjLGj0GAMJN9HBWT0Rm/R8f+6KFo2Jzqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646838084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fSFqZxGmqoH13mTdAzJFR9zMWyNIgXP7W81TKIloMpk=;
	b=IO6Kn0isewGQJNE1gRRPeUwyE0g16O+zDDq7RQHMqM0Q9pZFKzmikd5ZUoRMfdwT
	RV+yp1BDTMOZcQUX4nz07+l/5XMvEztckK03y5zmwdayTQ0seU8ISROOAgC2eWlYkII
	iCVF134uUyxMoVhRfOvO4y0PakT80/xZYHGCpTzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f32f4bc-2fbb0a52-2575-4f9d-8456-9432e04f00c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6154cb6c7d01e26454918958c09a907bf860392219c1583c12010b96e23d802a
Date: Wed, 9 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646838084
