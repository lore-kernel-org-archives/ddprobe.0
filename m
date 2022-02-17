Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94169434A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645113384;
	h=To:Subject:From:Message-Id:Date;
	bh=YMk61D4e0imNuV1J7mjpc6+T5mAnnHQnUVGVQFkBcKE=;
	b=RAa7RBRWteeORX5LxI7oIZN8sZjh1AkRiFw9MjpEQjPyCfdzJQUVcT6me54Nd8k4
	CZBumQaomN8rnDDvBDB6xAd8Y9Vccg7t1ZYL6qSGxrbwAO+OugULj7a05QKM4StHS2u
	RWH/R+U4mab9bnMs2QX1AlUa6Jw5a58kI4aEl8EM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645113384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YMk61D4e0imNuV1J7mjpc6+T5mAnnHQnUVGVQFkBcKE=;
	b=ehFsOM6vaGSh07wQ6rqGCQRsnl0e/MEGUzropDzxIPS+nTQYwZBePS3aY0339C/4
	L0Pv0Vz9zhq/+Kpisp2KV1AkfXaC8H6Aqk176/zNLCuqCJSOSMLybUE8ut/36u4f8Ci
	hTvMvYQF14rF6x6+Ae0MYa5bSMjuutnZFAwPlhq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08661f30-75b96827-96ce-495d-8f29-4a8494efd0f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5785c3fc9dfa05de829f841a033e179344ebffb35a0477c1dcb4291d1dfd073
Date: Thu, 17 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645113384
