Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512077A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 05:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646371885;
	h=To:Subject:From:Message-Id:Date;
	bh=ytWafjcxOUhOQS85v1SKdV8PiZTXwnRgpP3qBNMT2fY=;
	b=PbDEEyw80MblXDxAe5DnWOzL1G5QvbjTk3D05owy2b9hlC/+L2zYeCKqNFegFxxm
	BBYvfRCX6IY0FvHEMw+K1PqnhzdbOcdRlaJ78CLV0S8X2GZ/Y8Df0TeIbYGxPWQImYX
	9m1cxvoEBp/8z+Ty71Qju3NFJVrIAol9MmaHJJLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646371885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytWafjcxOUhOQS85v1SKdV8PiZTXwnRgpP3qBNMT2fY=;
	b=dQlXvjh5cniaTFiW1mDSJkMFa0QpOW7/92jVIkPsFx59o+alysrXSV5FRVo1P/7g
	SfTl5YcBGuDLrwebmix9n7s4Fm8lIeF5LTy/TvyVbhg8tUofOWP+Gevu5E98NzqJLg/
	i9BEfsW1t+14UGoBq2BzHvty5VIx/8ppQWfYT2XQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53694eed-fb2f4662-d4ed-46a7-863c-bc4c4f4c7f51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d2f5ef308c273e5534551e2a7bcd3b306d1b7b41544facccf59b609f391f82a
Date: Fri, 4 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646371884
