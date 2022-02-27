Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF557A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645920385;
	h=To:Subject:From:Message-Id:Date;
	bh=X2DrsLnWVxHyNvm0F9cHoe7xb+4TbiLPUd37u+OyO84=;
	b=Jh7Qju1N6aJqAWv0QmLS5DDYDv7dDbvWNmIhW5Is4ReFPLrHt0Ckxkl+DPrKiwtm
	rcv1ahLtZ5AWdfrZu+EyS4l2aw8/MNpYxtFQCbglLHqP5D311w2bd59KNJrorVyvBzV
	2UGKTpU412kfSvUT3A0poKqEMQ0OjvPPFFHiOY5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645920385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2DrsLnWVxHyNvm0F9cHoe7xb+4TbiLPUd37u+OyO84=;
	b=PqR9Aw6VEjBA7aDfYzKfdk/sadYvFZFGyvZ2BHCjGO0eNTJOVP//az2kQs+ejoHC
	5D8k+8FfjkL91LxzosNN0i5hEC7HvrbYxpvkLxb6LahweCo2XitKzhxHU0fegKFWJXB
	t2IijzBNXDR3gWTDFntbvNtlsxcigRZLiV7jj5cA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f387ff70c-2e60722b-e394-4fc2-8f19-485b8fc7d4b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75d0506012e288d73a2d6b381c9ba51b76fd862a0a734b3edabe91d9559d81ed
Date: Sun, 27 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645920384
