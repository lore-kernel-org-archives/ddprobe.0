Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33E12F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647598584;
	h=To:Subject:From:Message-Id:Date;
	bh=b10QJjmqJ9hpD+rEW8ehQLvR5kZN10NeselEhOKfBfM=;
	b=CRNMOr0uYsa+Kfe9617lk2ewtihhz2XOfGWuqWBa+S/zt6tgsUpDEIY0cyID+TCD
	5FYy2hLntamNQu6PUHzMVMve7lGScWAzWl7rcflmNQQ5kuhOOVkWUCgmssOe4BIDUAw
	Rm//ibq1idBvkgKJcFojyFJi75g2KQA4gRaADFI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647598584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b10QJjmqJ9hpD+rEW8ehQLvR5kZN10NeselEhOKfBfM=;
	b=bRFwso163GVaKZGrK0ObhElL30GTRhbiCXhFHkL7hVuGIWqwmgI1ISVf8Yz81Q4+
	niBwFU1EBhz+cJIZWnsBqayntk6mnrmx0+VLUq1id0RLYm8u4II1mNQmv0+LqmgiB1e
	BGqDaicrxGFFt3A/EL2Tt+mIYP4OuqRQkSz5MqLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c8743ea-7bfc5b57-8671-4e88-aa25-4eb59fe331f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 898478d6800d1575a487be2881d663fbd002f1ac0a3cf8fe63bb0a1645c99bc7
Date: Fri, 18 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647598584
