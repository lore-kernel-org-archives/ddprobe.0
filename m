Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC6023BB
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658384212;
	h=To:Subject:From:Message-Id:Date;
	bh=qm0oayLJi5lTRj6qoS6pDtPKN0hH+1uuCiREgFzs1E0=;
	b=HdWH82++Z3+XKyv4XLVperxATpyCEOvPfMzECtEUQ6R/nRfTLMSuXLhGDsoTESuT
	C/R25HYtWZMsmnwgWNdkude60xU0bsQgjEktfi7y05DPatZPGiGcskSnUfeI7hGBE8c
	rJcfu1WqA4WAJSQa8OlmT2fovbZ7JMn2mI8MDhio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658384212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qm0oayLJi5lTRj6qoS6pDtPKN0hH+1uuCiREgFzs1E0=;
	b=KNzPWVREnkenVjCpi5iWBUjuH2BixbT48CLxUo5FeQrM4S83ZuBzHuLoo7knqQDX
	BfO3HGdW0H/xd9hNBT8xeiAevMGMidyVBZI7DLHFjFSii3Nlk+rUI9MtjKrYzh+IO5O
	jq2JeF2R50W21fQI/5A7xgGlMwH8PDrLzKazEd7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f66e13c-487bb15f-ff39-4ef1-97d2-110e15216c56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18bfb27ada5b988bc204260e4c17408fdec4d81173b2cd282119a67bb2cd5bd6
Date: Thu, 21 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658384212
