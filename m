Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1BB290E
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659734452;
	h=To:Subject:From:Message-Id:Date;
	bh=LssltAykmEkWJr5fObdSpKm3yaa3FmiwiqelLNeFK6U=;
	b=Y8zRHSVrdVNiuwOAFeoon54QVCDAgzeN08xZhfSMaQCM2s2jrsokDQwIhJNLGlbc
	x/RudK8iko/nviEqryCNJsGwPrQa23uJ33IEfQNKk2YJ69uoVwkLzKZeKEEPxlwIzk0
	HRZ8skoHuQqFk7GbldUJ5GpRvD3AS0D2Wkfo4AVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659734452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LssltAykmEkWJr5fObdSpKm3yaa3FmiwiqelLNeFK6U=;
	b=a7eMqtiAESP5Ada2ebWcPGft/u81BxgMiJeVb/rsCFpYjunlJHpzLyXKpWUafxnP
	ihaOy73a2A1IRGwA4kyxB409gxtIFy8O8G+tYJf3TnCdFloKQV2aMsdNSRTJikL/Ql/
	7DYqEvMwwnvKIS6d8ptdXpVe/zO2Sd7oKsKIFeic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fe1e95e-443b3373-14e6-4982-a4b6-7f167ea57c1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e146f7938e42647dc41efea15acee22e2821e99b8c7cb8a6e6b93bc52736319
Date: Fri, 5 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659734452
