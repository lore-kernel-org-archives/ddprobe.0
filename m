Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C411C15BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646808085;
	h=To:Subject:From:Message-Id:Date;
	bh=bxVN7KgjE6xajdO+MyNpQ2+1jBWirvTJFOEk0PnHgJE=;
	b=LbFncM8Xrq05xLOC0GCOB9EKXlZ96O4D7YysHq9+qtMfVOmgiEtOrVY+eEhO/Muw
	HwPh3n7VgZ15amDR0O7YcJTYpEKf5So+FfBlUGTqMEKdoa4R51S3oW0RLVN8dW4yGxo
	qxW1xyNIm2oryQBpbUg3Rc00aAmCDDIBwCwOqdLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646808085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bxVN7KgjE6xajdO+MyNpQ2+1jBWirvTJFOEk0PnHgJE=;
	b=G+PyUR7JC8+fkRTLIyR3lQVrZCea5Vh227pS0nRu6MlRK9hbV/h/w3WI9+ZdgsBj
	NCYmcQ08+ldeQ/ojMPL0caFWMmZBV8boOzLA12qQuTJjtkpHvuO+Ii1VZK0gxq8rAy2
	Aq5K5h3j5Hg/KfiwOi4dAWTt2SfQR/IPH0mfQw+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d693119-48fd2a82-8020-4105-9199-b83bcbdcd458-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f2367b498d4542e66c5af8b73159337b0e2947da1d0b5fe8f98bb05fc4c86f5
Date: Wed, 9 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646808084
