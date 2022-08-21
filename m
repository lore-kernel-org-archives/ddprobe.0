Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5829720ED
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661098852;
	h=To:Subject:From:Message-Id:Date;
	bh=9miqRTTxpuvychwboAsOH+QnfUbZjyR4UJa2IeGOh1M=;
	b=P8C/BNJ9Zm06euIk4et4jui3t17oTg2UrQoy9bEXwgxsi6boZAr19g4KNSuy0zCq
	ozWb6SOIc+eWC9Pj2yWbP8lnMkCgOE8Awyg9ad8zbpAavVGLuVFb769+K3G4hJ3Ih0n
	uxv/67hKl99522xa/FNzVtb1cAFHc+zzcynupSac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661098852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9miqRTTxpuvychwboAsOH+QnfUbZjyR4UJa2IeGOh1M=;
	b=C4tTXRnnG2QEXycSMCrUcP4zhdMR3EPR7IrBcjetS8fPZ97/uhRFnR5UznyA0ylg
	EioGH4LqQYhCafs79Ud/JAwan0LzEeTeEDgb/za6tRudNE9c5l9UfFhzO0I6W3RghlM
	kzrHeBRA+KIjqhcVmMRM53gHgvyMh+N8rR7ybZaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c13500f5-7678f376-a0a1-45c5-88a7-fc2614c199d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88a721b5c61b5f5e26d19e0f0f058bea541346bad7400c84bdab3989fe1a4551
Date: Sun, 21 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661098852
