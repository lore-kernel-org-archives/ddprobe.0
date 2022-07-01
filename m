Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D161850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656673012;
	h=To:Subject:From:Message-Id:Date;
	bh=Czkv+zstY1V+ZB8I036Kd1sT7D4yzK+g3W/M7INARfs=;
	b=C4QXVJrQVYx/IRkOzE+iXqAtZbIrHDg41dwWfk6Cqh1apws+OgeeHRCiwyTIctES
	WR2tpFVq4djNY0192+G9yqBbbnR9fBScpa6XH41rGlSAaJFfnjxd/beil5oyeanVFX0
	43wLt1e1LrJzHV80HRDThy4cyEjhQbwcXhHHDWsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656673012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Czkv+zstY1V+ZB8I036Kd1sT7D4yzK+g3W/M7INARfs=;
	b=SvDuEJ8g09tSLZrtD2+93Lzy/j8tt1dO6Cy6hRL4+rDi56IdFoHxdOVo+G0GdtvK
	8ZPoLpZ2ECRbwsi/CT/wvTmxj5onG5JWHabkyAKXoQseh8368xc8+9QibeH4F7Z1pHy
	kG+OSEPPat9+qGbjZ0KaPUk8bzuI13LWG8KBDNeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9680a4f-6904e20c-75aa-452f-b242-fc64ef46972f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c66b861c2ce449f2a170ec3e40004aaa9f9b398c2771dcc177a932da5671f6f1
Date: Fri, 1 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656673012
