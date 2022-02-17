Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5CD3B56
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645084585;
	h=To:Subject:From:Message-Id:Date;
	bh=1d7Hpogz1MV/6D3gqf6sKInwxT6cMArRO1F/Wmj8Hx8=;
	b=V9LFtv/H5pI7XR/fXxN5uyD47hLUwjQCcmwwqF/DB1tjEMAaJjNQK/tWJPxflWeO
	fMpx982iTzQGJAxa2d1iQpDCqhSaRgSyR/GU42MlwtSzCKKaJNe8LcD+lc6ZJh+7E0E
	hoS5RPVewbLYzSYtnT9Pk2FNAj9cOQl2/cnRzelU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645084585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1d7Hpogz1MV/6D3gqf6sKInwxT6cMArRO1F/Wmj8Hx8=;
	b=VDPUL1LghOynSdpIcsMhxjL3D1qvJKFvZYXfs52VkkUQl3kI0nqXU1lqZhttc5P3
	Z1hKNmeSbsDstQ8BVXXbTCYcuME9N1hRnfluZqqgNcLtywNwInlPwmQDN0rS8tNfppH
	q6bR3C97TOdj/fu1wGE3Al+O36UDbz0+JrU6ulF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06aeab36-94c4e9ed-61f5-4f77-8954-9fc40a650d54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45b9d7ab6f5d6f10d439d96c7fd2c93e8931403285de7c92b6efb5fb15c17548
Date: Thu, 17 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645084584
