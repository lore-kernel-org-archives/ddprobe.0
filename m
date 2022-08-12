Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DE42119
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660324852;
	h=To:Subject:From:Message-Id:Date;
	bh=+tWjOgNzs5IG60R0zpSMagouLlEpqLc98ysdeN8i3WU=;
	b=Z6xZIH1ptn/H2JSpLYN3oT69bjl/7AJRr/AlSOElfE1WQP7oAiwzlIQiV4DQ716l
	iPBESyQS2D2GG46bZe7hlRokScSMoGsZTrp+zFfn0p5bZyfQoeXRXCJzkWfsPXvKlYg
	jy8CsTZ8f3O+xkoCxOpgZcj53eEMlVo+jEhMGGLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660324852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tWjOgNzs5IG60R0zpSMagouLlEpqLc98ysdeN8i3WU=;
	b=B3eHdcNQKt8ptNzeuA7dYdtK4tD7PzX9lfre1S0J6riiM/uYYy0Fa800yc+SRlmA
	RKATVx7jTPJEpv0mjaENKCQOvNXbIaLKxR4MQBBuchIW+ld0n81ts2ZPiFep3jZgNV0
	ArrTtXUKjQiREGwogquMlIYkJZBK+cjvw8sbF1Ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829312b383-7c750774-0cf3-433f-b9b6-8fa8faa25c0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78a2809d41ee42ef468c2150d690a74fc5f5128c3300464220d19db867bff1a8
Date: Fri, 12 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660324852
