Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BE165E
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 12:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650285538;
	h=To:Subject:From:Message-Id:Date;
	bh=+2c3jislf4Vz1toX5lqAVBmU4rdNG1RVjo5QUH/Ode8=;
	b=WXm6bNdB9BZUBWLh4y1Rg6h3EYH+eh0f2SGNbEm6uGYnPIkTNEDN4XcyIQE4J8+w
	KGTw4GUsSmWSlU7sRS1dJWfWKE3pYwkyl8QEbX3ce8RAwcomcI203dXwo1E/IM3umMb
	U9pFECsApZ1lP1UhSzsqMvEUTD6Z+UObIxVDVkR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650285538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2c3jislf4Vz1toX5lqAVBmU4rdNG1RVjo5QUH/Ode8=;
	b=bRFOG2XdlbeO/uXINkMoR8QHz+FOPdZo9iMrHg58z4xNTSgV38A0luHPpEXeQs3o
	xJVTi5iipg6Y5OY/tBXQ+yQjxJwdS8jL8i4woaJR15yavL0dDW8Zbojq3QntQafhA4R
	Aes3jByUtPq0kq6CU94ZjIq+3byez+GXZCXjopE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803caeebc6-e28ebb8a-5398-4860-bdbd-e5a0aee92969-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 229d1e793ab31c17c4b0e38cccf63d6482a47bd8fda11ca1653f95d15540d593
Date: Mon, 18 Apr 2022 12:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650285538
