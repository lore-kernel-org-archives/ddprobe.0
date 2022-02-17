Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE4F3B2B
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 08:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645087285;
	h=To:Subject:From:Message-Id:Date;
	bh=hwHAAaCg8P4Q+kXBeUFQaSpxryXzXgF/VnvEyDCKV7w=;
	b=HAJWmf/M6ik8R5+qa2LLkFW2dfNPrLhPfR9WCUcX3FYYaH5ni/NDjYs0dQRMm0gD
	+jvbIqCqLsXLv65ZVbHMWlVZc8WHXeTLVyBVc0VHR/UGENUxxVtmAcpYatXdLH7J3LH
	cgY1LtgE8FxIEKLx1STU5JVqb80uq1HbV3Yr5DZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645087285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hwHAAaCg8P4Q+kXBeUFQaSpxryXzXgF/VnvEyDCKV7w=;
	b=bIw4jbn/TYVWQx2Tp6jJQ7tXaQSnzriZZkl6tEKjpy7K1j2YcUa24xYC8n4GIHZL
	x7sGhi+EIvukwpUSxc6cOUxTSeNs9lsHttaQxyXGl+E6XCi+4Zrrnw3rGbyD45jVDym
	5lj20mowA5mseCZ+oV2ZRG8MDT431eEBYeRPTy2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06d7de71-68d1b351-7165-4523-b29d-b64704230575-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fde5ac535f8ccb9fdf8a474503291046caeaaf01931ff22ab61990db328455b0
Date: Thu, 17 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645087284
