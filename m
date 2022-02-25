Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B4E2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645823485;
	h=To:Subject:From:Message-Id:Date;
	bh=Y6bgqKBshkyqP5G9I4FAY6VI5Pd+CYAAZPhMXi+s15k=;
	b=Fyz7p0B8x0LGcaf30ZTb0phkpTNhQuGgA4I0hZ1Wen0tUYpFqZZGWtwFu2luo/ki
	S8cnCYkMMo6bQbZR4Cy1qFXIf1hjXVYE8P69w9f2vTXS3IbT4yBbfUvVbbuJ7LgE+7G
	S7gazDH1vefuov9yPzg6mNlEtzFAuTE5LlxRg1rM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645823485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y6bgqKBshkyqP5G9I4FAY6VI5Pd+CYAAZPhMXi+s15k=;
	b=U7MAzWQL84r44ycGj/aR3v0CH4UuB7xVGbZFCqp1hxJbEWn73ZTTVh3OFQOzavmK
	vgqA9KgfMaVjiSGwTBwVwV7FpSqQjmqGguQsnTy/g0IZRS5zBpyhdYvqz1GEc7Ncsn6
	Flyf6Pwv6t9SDL2JzCRdm8vlncPQ77vS9sd3wEw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32b963a7-86d210a1-48c2-4479-b44d-0bea6c3245b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34b3f776c393b072a4d92a0894e48d72c6b6afd41495f0bb0f7a9c2fd127e8db
Date: Fri, 25 Feb 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645823484
