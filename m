Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC2957D0
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647022285;
	h=To:Subject:From:Message-Id:Date;
	bh=K6gcN34+hDfkWXHYMaoKcc8sYWCqiN8HnPZJo6BQg5k=;
	b=i5vhwpwofeq/MR/eP6YqbXXsOGN6mvkM63BfS/kVK26+1ZE7F/5iNBX/4Ww5Bmfg
	1ISsFPQEwRDY5sb1QEx3Xb0H3gSUctzaNxUxD6zM0qqzjgYNay0DawC6enj4xRyWHEG
	YtA16TpL2VQz684j5odqDNIwk1MkwCfnHZCbFgF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647022285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K6gcN34+hDfkWXHYMaoKcc8sYWCqiN8HnPZJo6BQg5k=;
	b=cf6If2g6i+fZ8ataDyPIF8SglrubHRQkfJDACaXTQNunC9Nv4/gz8+aqq1EFE+JW
	B8IGFWQdsfJPih4QFWfqidP6ZVkVZomIaBwwjkrROy6vpPa4nKwSjyT5HjSmbMNVdH5
	ZLXbbHJRDMWO2LFPMB1yA/bwPW9sMuk7SRkkSLus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a2d9fdb-9592882a-c5ce-45ac-ae1f-8153260e62bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f634a0e79a399b9312b86b45174e32e73276d2ad598935f2047f352f4f124fce
Date: Fri, 11 Mar 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647022284
