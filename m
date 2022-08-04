Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2F97C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659637252;
	h=To:Subject:From:Message-Id:Date;
	bh=Sg7tFEtZU03EVepJwEySOl31y778lY49AtZF0ujEMAs=;
	b=CCk0XcOKaK+3gEuY1Q65vVdCcM8Ufkyv4we8ZsB7KMczIIaslwtC9Ox/UBQZirfD
	ESgSjl4NwgT8e4kaMgORVvPZqhwXdT3mtnls4OyZFTHy4jK7QV9aD7ZNqoWn3hfepGw
	BRTr/81skY3iR0oMyt1W7lcBmAjvIPQC5kWhawkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659637252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sg7tFEtZU03EVepJwEySOl31y778lY49AtZF0ujEMAs=;
	b=ZAvzvplskgdhEqqoVj6Xm9O3ZCvAaI0jrj7RGgsQ6t5Zv1fuTLFP/AqqxhHiwBEH
	8of4U/2Mj8ceOVaKBiD3VkX1zxMg83kdbgSZ1Ifuftd68DIFA7xK4sfIADdIt6igV8X
	LQ62ddW0S0j/Ku9PjTwJ610NBlScNtrn/NBkhuCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a16c264-90d4d9f1-cd37-4879-ad30-6257faff14b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b46478189a5c004076e3148230512474fe2a9e3c847d964f9dd2df6d7d24f2e
Date: Thu, 4 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659637252
