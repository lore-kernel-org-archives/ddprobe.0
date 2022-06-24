Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA13FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656109612;
	h=To:Subject:From:Message-Id:Date;
	bh=4naUHG7K8xIUhDL4Syxu40zI7IL8t5+/aNJHMyCexk4=;
	b=FJCT1wLmRUsmaa6KFQCcEZMWRHbcCvS3uXWgHCcAcSKSDMPcJYCAvB8pu1f0b+pw
	p2S9bgkRz8kaDH6t46y4d0YJa2CK4Ft7sDDtvTy/QjjWEw2u/vvyvwAQzEDcYKCT9QJ
	LC5emu2cf43z5V5p5s40BqJc1L48FVR+ygdn8dDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656109612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4naUHG7K8xIUhDL4Syxu40zI7IL8t5+/aNJHMyCexk4=;
	b=h5O4WUcq1fMdrp/b0zLuCz03u7mZAfymgKHzwQ+gubtGkl7bSC7GoMwSdmkZ2fhS
	BoCWyCX5W8yuW10jpFpXtPF2wNviCjzBXfdoCzm9OwDTMUaXLDhNP0q9/GKJjWi5d1/
	4oB+fsb0hrc4nWoPwWmovmBpaua3hLbDJXdsxSlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197d33d39-07d6b9b2-752d-469d-881e-65b2d5c99e23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38c639c244b08e959818f0c1cf0f7acff168be04343cef64f8213836bc107610
Date: Fri, 24 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656109612
