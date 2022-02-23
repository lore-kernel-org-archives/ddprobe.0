Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989B3C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645620984;
	h=To:Subject:From:Message-Id:Date;
	bh=69HG42TXjoBpoLsKXXL4FQAADV5KCLrqO1OLkk6rZPA=;
	b=JuQ/YCQeppcYGXrw4lE3q20Gl+wX3mq0v44LruAtID8o1DKMA6+F0Hc9IGWzueAu
	q+MJRZfY0wijp7x0hVr8LHQodK3F3X1vx/ypX6F7KbnRAhN3WRHqlwQ9jknOyEcwdoN
	F3uxAMYEuCZphORgKids/vRBj0p52B9t0l2o3J0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645620984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=69HG42TXjoBpoLsKXXL4FQAADV5KCLrqO1OLkk6rZPA=;
	b=Uju456RonRYPspDMr1frrvBAWHnaUt4Q6sQYO4mxllOZVYC8GcjymIDE0OG6vbjf
	7yFzIc/2VMy6BVA9x5kW2bBiCw9oN+rW2KrEuodVQZDxrxVM6R4GDuLP7PbeR1yP3t6
	iXQ+5+XPvKFoxzRFeB3VsBJaEJmET44MgfNkWpJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26a77bbe-67148d15-0bab-4890-b697-4f5f108914dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9273d67a0ff3f1fa82b6cd40ad8ee36c71fbfc868a76e9e12b68c4b0a4279c85
Date: Wed, 23 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645620984
