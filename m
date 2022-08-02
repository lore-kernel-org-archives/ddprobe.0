Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3E57F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659444652;
	h=To:Subject:From:Message-Id:Date;
	bh=qF/K6FmAf7DyKHgL6UN/mlCw+jJm2ShsPFN7pHK/QAw=;
	b=T6+CcwBgntwAeaKDLsZSRZ73+zF8Yey+zmos89a1W54ZTz0DN1li3nm1ZJ3VkJ/M
	S2GytJNdiqM6BnixwN1qByC12hXOxjlDfxl+4c2QONCmUPbzuAbeVJ/HIAECQVWzcCf
	nrenbdQvulYrxftlYR8JwJfvzrtxijJfsGK/r3c4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659444652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qF/K6FmAf7DyKHgL6UN/mlCw+jJm2ShsPFN7pHK/QAw=;
	b=T962zGq8rIOcBEKgcFrxfzE8pPNKFcoRb+LjD/Qzy1J7/2NIlwyInCuJDua79346
	rn3V1J/MOe7X/CnaBj+ly0V8imcineyoUyT575+Ky2GR4ARbeVdddWyr3/4PVqr6RWH
	OnO2nWcYqqe+pHv7PzJcIqDGzbengS1Fuf22gqiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e9bea21-02043bc2-423c-49b7-bab0-926adabcdc7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0576791df34ea0723d8d29ab6fb718237527f4bacbff00c08cce36c4f0d0aad4
Date: Tue, 2 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659444652
