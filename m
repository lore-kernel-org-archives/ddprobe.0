Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A44D136A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661083852;
	h=To:Subject:From:Message-Id:Date;
	bh=PrUrZI8fd25MA5AB+EMqVpUG6VjidywzTTAM0vNVznM=;
	b=g/ZjTM8OlKnTMuHwuRAZiTfjcUyEXaXnthsstMp4vAkrCY85ep8/Tqsk8H64J6U8
	iWLUiX2UuUGdBYtJM5ggWOHn/ImjuKepk2e6hl1Pw5ndSjDygG4KMtqLT7wMW+KIy3P
	GVEoWVVJ52e1s+gAeuQhxo4e69ns1Nj+85vyJec8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661083852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PrUrZI8fd25MA5AB+EMqVpUG6VjidywzTTAM0vNVznM=;
	b=htv6GcAuEn7MVg83Rg4Sw9a/dnYxQjo4NBmR6wmtNHbcbjax5irF/a02XiWVgIdi
	Nms07CTLf4OtyMU2otuF+UIuC102+HftraOiRAc8jFv7Uy3OR8614E7klC1g/1tCpLT
	a1yzCUFOz+sXv1Qzq9DgTnFLAHIs0DOCNQoNnm3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0501f16-db56e3fb-68bd-46b7-8fb3-9efdecc48c0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dfd566c29d12d0489c1304218e0b2fc4c2805d9e9699d65e77443e83000d078
Date: Sun, 21 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661083852
