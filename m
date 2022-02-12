Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2967C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644686451;
	h=To:Subject:From:Message-Id:Date;
	bh=e88Y1tFviczvB5LUiMFk97Y4MXuvvZfWmSEhCbtrrMc=;
	b=dqGRrnX+FdmscZxJEddK65ArO8PkrrJyaAzW8XFFEJje28QcQCLmJNMIaiLUxZd6
	gY6gFjopHLS7h574eCzip+UzDJZtEkC5EANRgeLay9rrVxyrAz5HFftL2+dcN1+geAm
	KJaZe9+PvC9dN8oiDLY0wRBMiVbXIo6WZol4cw/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644686451;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e88Y1tFviczvB5LUiMFk97Y4MXuvvZfWmSEhCbtrrMc=;
	b=Y1ImzI15aTCpuF6xb8XVJlkYPjt+Yn5OFqLV5ZPkzoSmuUr3Ay/7dxqiXQOooIXP
	zhW2YxQOjuD5t3yVSj5x0UjTRDbeEJiHzQ0QmBVbwHmzwMcpmVzXw4JdpJ0i4Z32iI4
	0WfxMMeeQ/uUOjfIwJ46sx61D0kJEuXOWFiXLdQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeef3a1d8-b3ef9c6c-701f-43e0-88eb-a3c84e06c503-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd43850ec36f25adb27040e9ba75daf5ac82987ac852ee2bfc936dc446bafe4d
Date: Sat, 12 Feb 2022 17:20:51 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644686450
