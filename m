Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A60517E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646108185;
	h=To:Subject:From:Message-Id:Date;
	bh=qsgReh+5/+IHB4zdqV/mcU7i7X3Uv/nbFlnrUwVx6sw=;
	b=KuQ5EUsSX25mRYFidZ9P8vnIU6eM0mOoK3aa1/RU6MyoAbYhzE2e71q66FJnC4ij
	X2mvoi5f+aAQB4JCwV6TJ5gzhwtvIU14e/QUpWjuqyqns8bqcOZdoWVPfLp6gNkdVwp
	Kw60p1Nu5atBWa3x+QGf8TpMLS+Wz0U18gVOlkq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646108185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qsgReh+5/+IHB4zdqV/mcU7i7X3Uv/nbFlnrUwVx6sw=;
	b=FRAVng0rVyhofXFHdgx0L1lib2EwfY+oRMvFR02Aavi76isccKhulkuy3pO2CbE/
	9GwdYbeUqG9RBmrJHeLCr3d+xJsMVmXG208mjv6ydcLX5nexYQWMCeRzuKJZy9gtnh8
	SvQHNbYnyeQZRK3FZi4+0frmncQTs8MCyFNLmLpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43b19101-08c5c81e-d40c-4f39-8a71-fd7ca5a330d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb9637d5b6b108e71d16183ab92e6dc1c03eb019506e5f651c61be4eb5db9a1f
Date: Tue, 1 Mar 2022 04:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646108184
