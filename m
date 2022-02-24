Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6486E1B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645728984;
	h=To:Subject:From:Message-Id:Date;
	bh=TXJWG6EHivsVdK2uV6svSmSP+d8B7Q6eyEIvhWTz4dg=;
	b=FyauamKhpMwysT/odDahKi/ehaoPj3Kh1nipbr0zUc7bUbNwLwxZBAPR01w20aTC
	Cvxbe9zBCYJn5BybL7oIR7QFYiAcLE5Vv5bTLU1tA7ctHLiAHLo+0+NdjN9aW9reNo8
	bsYRu79Yja3tkbYcTHvr4tJj7Kpre9Fb3Eglck0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645728984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TXJWG6EHivsVdK2uV6svSmSP+d8B7Q6eyEIvhWTz4dg=;
	b=N32rTX2B+xhLzjc4VxfMN/MpLEGLqNN8h9k8b2U822YW8te7z957jUoM8KLlvZqf
	G9ekTZfqWcOtPm5TPisy5MpGhq8s3khtvXVxG2PeAXdQonBQv7uixcKuWGWhS02UYH+
	pVAJTd1Y9vH/ACJTQW/rrlibPiVGeXva07YwGkpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d176eb2-05a6cdf5-8860-4a07-8802-491aea00a795-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bb3dc290fde01fb90e56e8a13111da1a8a8afc4020c6006ac597a94476bd0c7
Date: Thu, 24 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645728984
