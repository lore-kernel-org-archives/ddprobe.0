Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B8F4A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646756185;
	h=To:Subject:From:Message-Id:Date;
	bh=5rVbyB1tiD/ZDXYo1lnm0oFeJVk2T9XRggzrQh/5Rng=;
	b=SecE2rM9W17j50/i/51ve8zpQiPAnHkOZSv9f8nbbWmYEFl1Ahu+5wPLCNMZM/Fk
	Kcd+gnCo4UiYtFrUHWWYDsP4V3eZZ+P1mcaACvqc/hWwSDcpXJeJPTxIAUMDaSFgNXU
	JxGe6YG7Z0pycIoln9gt4YLf1eoMLlga2xDUVzn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646756185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5rVbyB1tiD/ZDXYo1lnm0oFeJVk2T9XRggzrQh/5Rng=;
	b=F/+Zr6Tx2Sto9cz+MVouCDSGvxy1TE+2RnNKWCTZhov5HvCy8HC+GKEqn8511pvD
	RY/E96T0mePcsxNV/VfiSSlMSVtyxmBu1Tp5a8FredjmQDQF1fqW7/P3ZKHOipKsDkB
	1MYa5MM2B8X45CNnZ6+3Eu/VdCKmDYon4T52+45E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a5142c0-077a2831-4a5b-40f6-b933-746771359a85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a7fd3b96aa6c5af276f5e55a8b8bc327b39ed2319271b97f0a55e87e2663c23
Date: Tue, 8 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646756184
