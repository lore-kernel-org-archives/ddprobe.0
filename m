Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAAA2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649347018;
	h=To:Subject:From:Message-Id:Date;
	bh=MALwWEtribMwskj7qU3UMM2ZpZMK2haLFJ0m3Ru1WP4=;
	b=AC240KxKQ1UdoABizGRe2FIVpW5PjsfTFO8BbJ55702DT3hRIyqr5+UShTQDWfaG
	NzoVCPxXqq2Xa+jz25xoKUZbXMiZCL0BnVO2NLP2d8YCm3mHehstQW7ZxM0FMPuuhH0
	bOW2CX/YdccUyEvO34V5CfYCGCGbULyyMvMjHY8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649347018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MALwWEtribMwskj7qU3UMM2ZpZMK2haLFJ0m3Ru1WP4=;
	b=gV2MQdzHx6LAD4jUMdIvmXWu94peZSCaU5+R8BAoE2oBuwKRP5dElCzt9zL+5LkM
	R/RC6DYYiyZhxhWbpUQGHcxg9D+/eYxv5la8RJzwp8pihAfgnoHFN1mSgXwY891CpmL
	8Ey/U3u8KE4l+JUbOQZr7C7RObQPZ6aHZVw0uWNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018004be3e10-95993a71-0aa9-42de-9dcb-add22629bf8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89c60e5a53f46d0763d7d417e7183d0332da83e2fc247c3ddfa00c52293e8af1
Date: Thu, 7 Apr 2022 15:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649347018
