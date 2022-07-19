Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A97B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658212612;
	h=To:Subject:From:Message-Id:Date;
	bh=aHmN4bcEilDfOofOQNnSaejnF4pxzHj1Xapc+6nLUMQ=;
	b=UcsDuZ5R3zITvEvSd+S0AZM2V+e45iw5SKfZIU5VDoGbt7uqT7/W2iI66qBSLsAe
	9DilvCl7jKYCoVsRuJixPfwwQ8cbyzyTU67WTySUU6LGLPoJmFptQcnGJZUuO7UWnwo
	YWABv0TwhcYdRJ4/cYipjzBY86vUkBFQCT7rfmKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658212612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHmN4bcEilDfOofOQNnSaejnF4pxzHj1Xapc+6nLUMQ=;
	b=DMUuxJlZUkQzqE4LVjfyzRIPIsI3D6BzwWNCGHeygc3hkJUvMd1Jy5wV8XOs/UpC
	Q/LVtRtavayya25Ycz4TuGxMiGQvZbYL/ajiL1aT6iqHbq+TwyoXIABQNRJPBfsZwQr
	DK/glf8sJ7wKL5L8+HQo2cS9en0kK64HwJ5Ltp5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182152c78af-f11b895d-166b-42aa-aab7-c4852c2a145b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 196f8dedc24a421c1350018934980398413a7a0d72c38d18001a712b5ecdccbe
Date: Tue, 19 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658212612
