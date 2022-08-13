Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDD1639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660359652;
	h=To:Subject:From:Message-Id:Date;
	bh=qJXwg0QFYKyexurmXV2sTeNUcBdkU1Hlx1k3hyWrhl0=;
	b=bndE9WzYCUYfBA97uMtqzdf2QWy27o2L7mIQavghKQmINlmKfR09R8qQHWlszyPS
	G1ilJV7HU7+G5MZEAnaEqMasERdC8aiqDnBt+Hxip34iYua8CwGmhsszyfGtp7i7uC4
	STir4FJxmqwwzXVIwt3H9MQmQC9RSf9DWfdvp14w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660359652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qJXwg0QFYKyexurmXV2sTeNUcBdkU1Hlx1k3hyWrhl0=;
	b=jq8o5lf5OGUa7l/NziNxbcbWgYZjrqGEYeJRUuKgDiqnvQ853c/AiYIaBUC2uZub
	FzxsMmDoDdg5fE+EmRYVis0d/xqMSKSC8CdL+Ilyur5x/PxKx0gEhb4vb8oyeGq1DMP
	66SyTmQiGv6120R0Ss1VLmAJ0PAEYeWvkE3wXJHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829525b52b-51ad8669-4ee5-4381-9f86-bd600971b4da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 074911bc6a4ddb810734d11b78c92c4b080299533878dd7d8a84ebf3898d5a6f
Date: Sat, 13 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660359652
