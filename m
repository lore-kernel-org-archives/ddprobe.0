Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21C07C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645936585;
	h=To:Subject:From:Message-Id:Date;
	bh=2XRjuOhOk8Gnz+bdEzXJ2cRztoLQZP2U5LC/jHess70=;
	b=F4nIW15LmLCm4qocFcuEi+2YeW3OXL+qXmV0ztiCZBhW9XLi7s8ElRaqRCCpVlyi
	4IUwuCrhqB9lYinEj7/qHtQ1qZ9qApoVcBtT8Q92RL35sHHLHgvfojhK8M/qfq4sM0B
	2fmmANQ8YS7ppjBZfuC4qpJSdyrg3ytpMRXvEEe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645936585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XRjuOhOk8Gnz+bdEzXJ2cRztoLQZP2U5LC/jHess70=;
	b=MFAlv2KH22/8Ju7lFjVaY/WTOcoBz33XiJ+PjVrJwlhVruMn+1PPwKWrVbA4forU
	4epTJoRmNz4MTsrhofB/z1frtDYEcbwF9I5DQOMdJAL8Nnad5JulN7CtNVBh6YfGAnl
	c7PuTBFv8MCidGTnujWtIFx10J2n6hM14yYldlkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3977284e-898a6708-916b-4018-9328-0a7cf29c171e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0276201fa11edcf125974604d8fa4575163b02064baca91468b4c962402723c9
Date: Sun, 27 Feb 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645936584
