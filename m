Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34437C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 06:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653373499;
	h=To:Subject:From:Message-Id:Date;
	bh=aZ3XWKu9KZkS6tigIQqx6eO+x1KrYMqnwFjbZ1CDAtI=;
	b=d4+S0nGw9AFNrGeNCbSt+K3wjryFNRgJ9mRJTWaWmbzXjS0hBR2dIKvbddtDRkdB
	KN4TnZdcHpzN4K2930lZw7M4PTydoJxQCvoqktdsvACPtrB5KmxL1mWDLVXVPYn+bo9
	7qSocfWGinvk/SZsdQz28RHlzu3CxPSzkMgqwIEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653373499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aZ3XWKu9KZkS6tigIQqx6eO+x1KrYMqnwFjbZ1CDAtI=;
	b=cM2fZWqw4UWx4RHT4j7BBzXYV2EqM9c1ZzDNHOr75DAc7sDLi3LweBteL0qpYboX
	f2dLukk7FkKC0BbSr/YES1jSdZehCq2YSJqQwN0gtsv7q/fIcoJ0oNtnvPJiDVhGRyK
	uAyLMi3eXJBmF9wKe4hi//kuv861ZU5kwF9i0MfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4bd775e-a1534fa6-626a-42f8-9bb3-cb538a5b0315-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5035013d00f0935b658ffc19544ca4cb6dc8a0e794b5fe7d4c8d0469f1ae67bf
Date: Tue, 24 May 2022 06:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653373499
