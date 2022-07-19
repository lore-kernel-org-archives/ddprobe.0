Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEB2EA9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658196412;
	h=To:Subject:From:Message-Id:Date;
	bh=oi67Nmj3OC+R2XcSbA8xotmFxapMTVYDzm7XF596Su0=;
	b=aDKt5vULZDCnaAnB7JfAJgY2IWbWjf2l9dU01utP2wpZokmnFZ5E0pch7URL85mI
	9UfRgM9s3kNSXn8Q2QySJmnhNjTykC+yVugCHVVPMKTjzYd6xcFNKJDYCUByMb3+7Ya
	BkLOB/pXS5RqIzGX8sLA976+CqL/2Xy+z6Zzy69s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658196412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oi67Nmj3OC+R2XcSbA8xotmFxapMTVYDzm7XF596Su0=;
	b=ZjGf8S2j4fGJZLUWbDOAoipslfDaOv4zHbaGmnM6lGCabbIJLzIyIZhphFMIt7Oy
	DT9NLgK5PkmDB6XKSvYFRHFiWtnWHQYN2qanfB0LknccrV1SybRIELI3DZJwkhAjk1a
	4Du8iezOxv8MHJiFuer03HlqhzUcOyIZUuC0XeZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214354785-64782c99-d89f-4247-be60-bd78f01026e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8635c9a2bc4a98ddbd1918229b94e0f104d541973497e26f7a8d3b1925f8046
Date: Tue, 19 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658196412
