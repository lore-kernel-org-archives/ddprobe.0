Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C79A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658962852;
	h=To:Subject:From:Message-Id:Date;
	bh=D3lW80C7qkVhnXzemBr77lnoGFa0beqQWew9KuVEg4g=;
	b=EjptJhW1KCa68+lFMGuepSiV8kNee7x41olyRL+ugFCP0uc5B5lLI++42P9Vq2mc
	ns0WCc/Be+dRgwF4yo/UaCxFDN5WWn8tdV7vxjTqitswiw6KHhQGWvjPn1nmCVYOwvU
	f5r27J6Zt4sn3NupLR+xfIQttP/VXR/Ldh8JLJFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658962852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3lW80C7qkVhnXzemBr77lnoGFa0beqQWew9KuVEg4g=;
	b=aQXn/5Ew+s5TssCIHcdWYWzC8WczSK5Ydzg+qsjIWD0H5NuVv8v3ShgxHJVPJWnu
	sKmRO8Ew5tJkaWv5VONwqLXroUsMiq54Osa59CrtCX+YG7TFJAae+TECEA+Voy8TF7G
	8p1lE1RUGwnDI22hwI02J7MtRyLMmH47Ju25SkmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241e43acc-6ae8a512-a45c-44cd-9673-66f806c2ea28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e11d8a38ee4db26ea0844aa9a39bacfb507e7b204303e006bc0ea08fd1a52f95
Date: Wed, 27 Jul 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658962852
