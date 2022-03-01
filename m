Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4357C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646160085;
	h=To:Subject:From:Message-Id:Date;
	bh=CKD167VvbKccIeTz5ZEvG6TXC+NyhvAsouBSpid+UJM=;
	b=b573lUzLQsdd16U2BsBS/rHsmeTsUyfSUNX9rFoCAfHtsgWfxHEcV6s9+YRekmBp
	fanHabOp4GUtec2aK/wp+9WgwFjc+eS8j9RbDbwtx3kUJ90FmvqJYO79bnkitGaNMov
	E83tbVk2OVZqHi6r+sBaII4vriGnUjfZGGalJh04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646160085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CKD167VvbKccIeTz5ZEvG6TXC+NyhvAsouBSpid+UJM=;
	b=KuXkG58LqOFSV/sEbeK8w2qLSM0sqJy2eT/x13aBqpTeIn3YqhP45EUOB/qjY7HQ
	kZMoN4QhFXcdqUs4KYY2hU78lRBy02FwoktCvp09in2lIYqSTuiSQ7KU9hveYurxkUK
	c6gV1JgP7hF3tCsnKS9TWGw8rcMF0x4V+1wcRQ7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46c97eff-3d3a6b39-2293-4df7-a97b-3e933946d891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b85b0f38029d5d5285fc8f1cf37c29c2a3948294d9305a9f6136966537d0c27
Date: Tue, 1 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646160084
