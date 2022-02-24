Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FAFF7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645722384;
	h=To:Subject:From:Message-Id:Date;
	bh=4aDam7/PLekKTOtlvThPhA/Ij7+TjyFeVNaFtIaAtAw=;
	b=i0S2QBO0xDUk20mRZTAHrlxIjUQqIQH035lrekg3vaiWOi2mAOAQ4OqMkCad4zrF
	3NRzS0enZICHOriJoavTKhR5Z9lPNbIOk4t7FIokfImxK4F+XCRKvMUsyFj1xKdjGbE
	falomH65y1LJIsUpF1WZqlWug9IMjURgtYbsePUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645722384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aDam7/PLekKTOtlvThPhA/Ij7+TjyFeVNaFtIaAtAw=;
	b=ILnTZTJQN7U6eUU7VgJw6YQzm+xcshbfCzfCPYXugJ0Yv6sm9e5egNs6pqCFisu8
	Qsqpn8guhY0Ex7KyWft/VHBWbp8S2G2LskHC5oWC44XZOCujuf6g36QPgmo4nRpd2on
	blVlC3/huPWm3rWFjeb8pUVCGMdKqr/vUgCI71rw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2cb2b980-33cee9d8-dde4-4398-8b3b-e4cb8a07c717-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8e4e8782ed353cbfda05fb69f98af20ee7da35a4d89e49969bf09eea03af9b4
Date: Thu, 24 Feb 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645722384
