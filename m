Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16D515A3
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646785885;
	h=To:Subject:From:Message-Id:Date;
	bh=U8be5mgtaOhPDcRPEtC74Sk3wzl94dYv1BwbCxWuZJs=;
	b=Sk+schMNvpuF14eJvWrYgoJ/LvCr0nRorQRNB0+LWFK+Dko1NEdMEnQJd3CmsLsQ
	FInwoDIoQvc3zwnL21qDKlzS3GhHl/KOLh7nl70Pfn8iB49dDygfcaYUwv1TvmCUTf6
	JKA8ksboJFl0K6X8b/4hAFQGn40Zjrl/0tZ0GWoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646785885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U8be5mgtaOhPDcRPEtC74Sk3wzl94dYv1BwbCxWuZJs=;
	b=VD15cehQkKS6906LuoCKlFS4GRFv9bnkw/AJ2vRbTbA4nS/ZBHpwgCXBi7Ns2zJ7
	CiK0dIpDI4PJlW2lCnRrbOY+XtMU0KUIJLFUFctmrSh5lh2DiIrAWMzl2XSeFMaCdMt
	aRvql0Tmx5fw19K4Ob20GcqpC0Gyk9aMtlitb0HU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c167268-eb60755c-9616-415b-be7c-bf5c5e62f622-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2441985976dd9d09dd4f3bcf6d992cc911a0116af47b7cba6ea84f2c88d45fb1
Date: Wed, 9 Mar 2022 00:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646785884
