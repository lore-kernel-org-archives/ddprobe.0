Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BDC1851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 10:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653646439;
	h=To:Subject:From:Message-Id:Date;
	bh=Lx1oIoDXRNpOJTHVsOX+o4VP9cxehxpxHoWf766MCls=;
	b=IRsJB6UfBM/9QMB13qFzGYtGeAo8pHJqX0rJJ7PYNw5WEPfSDsbV2P2/AjSe1FbH
	RCn0exBVjer8N5KyREFqpDvyW4YaKNnrIJbT7PecvJgLIla14KkZbCsK6K5k3DaGvm5
	ygymLkuYb5XPMz73GJyA1lCf0fgsCRLNd0QpkhWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653646439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lx1oIoDXRNpOJTHVsOX+o4VP9cxehxpxHoWf766MCls=;
	b=eMdmkxEt9jL3oD72P7MYBhImWYGkQpzFT6HUWT0Sn3w3y9qhjmECpbJWKGOL66mG
	Iyp6PlAJ9TWRmgegvvjchLsxVNT7t5WrCnQbgBCvMBwEPUlRS45fLQglsM7rtRXNX1F
	29tckedd7U/NvZwm2fy1ypDvjrhq0zbsxaKJKQls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105023354-ab0be321-0ecf-4678-b988-7653b13532c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f408cbdc13c8f70a604953e376462c478e363a9b7f5fbf0e512944f84fd62171
Date: Fri, 27 May 2022 10:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653646439
