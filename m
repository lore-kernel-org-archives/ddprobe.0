Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6115320A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660346453;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZtgvkWX3M7R1igGfpW6MKdWld2USvIN4EjPf1kHmcg=;
	b=FYfhRc3m84IqG4/Q+zRjby2gEMr+LwFXtfIRn10/CjJXMaVO4i8l/RB0Bvn0Wu2D
	CJoiRw+QF6UTCXm4SaKeSTsZxqgwBhA0LILB8LjzM05bFHo/4Ygq89fvFSbiaxIOtFC
	FgYL5xCvxlj9B9it3tPfw45rwlXRTxoXSef1yzQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660346453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZtgvkWX3M7R1igGfpW6MKdWld2USvIN4EjPf1kHmcg=;
	b=NtkntWMCkb/Uyoj0LdQKwVoTJIMK2OlgXsu3fSOSJBbLy/GfgtRAUO82/xNUcaFX
	4Eu6AiouKiW5HLwimNVdmm+VQKC0GotekNTPk1rA4k/U51AyTK+fjGx5jmOzR3gCyUK
	7s01bgt9WWsmiOuntIE85NJ/LDRvKjSHaAhEtSuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182945c4a68-d414fc5b-25de-42c6-bc3b-21c1ba83e0b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5bf28d15a368cc6869f37f186a262f9878111d5cb07d83ba293275eb60d2f4a
Date: Fri, 12 Aug 2022 23:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660346452
