Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258E27A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 18:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654798559;
	h=To:Subject:From:Message-Id:Date;
	bh=3Yh8jA9EIZByoQ2VLi1pNMQaF76J5ON8O3Npm3aQ+mQ=;
	b=EvVtomukivdIXEJAoVK55/9nGUPGP5FH7uD3r9MUeKaHIjZJskusVu3OVAXkqxEu
	/GiSMqeZG6c6VmVS0mz1xX5ozCAuVEwnwwei2splLLAnJ79/NyFh062ycCSkJCKYLae
	D6xBTfGEV2pmh/MUH+RgKdBXZkv3GACFaW4OeZWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654798559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Yh8jA9EIZByoQ2VLi1pNMQaF76J5ON8O3Npm3aQ+mQ=;
	b=dUOzL+7mTAwFEC9INrjTh71FWEqM+EwmvthYHWcwKlNdzauV8xoAQ/K8cNKJT6O9
	YfSHRkoNUkg+LoX9BG5ByRCSGFoeXvhjEwk9FhCBZkhh9Tq99cfWnEzdcPu02vT0W4J
	YDknne7MEygmK5soL5BM0XQPR807lokG8lDByZWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149ae2860-08f84e88-96d5-48a5-9592-0bcc385979a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbb3f21171cb74162ee900e9cc27b8a3e9268ccc280e314c364fb053b1eeb62e
Date: Thu, 9 Jun 2022 18:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654798559
