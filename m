Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D451511F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645254084;
	h=To:Subject:From:Message-Id:Date;
	bh=mco9GlJAN4+9/WoXBn2aeHfHylpbjVLs6zJoa0zz4E0=;
	b=MZQr1I9gnr+tdsskBPEefE2dGQGE2KkoF3KV/FEgR85upn+s0tZKEYS6A8yPMCv4
	/MJaYOR5mqcYaIgohXzvd3Zm1y25kQkzfV1u2x6B8jdQpyekm/2aL7dvUR8sSC0sDCP
	HSaLhN1x5CQJdM9NrJTF5V3tqxhmzLkx1PZslnuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645254084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mco9GlJAN4+9/WoXBn2aeHfHylpbjVLs6zJoa0zz4E0=;
	b=lSM4JpSftemaU/XqEZDrA28HmYl5kMzDVf7i1EM0suySKopcp61N6u0v5lwvPoGu
	dBdEgDwH7W4BT+GNx2B7Kxxo2FKBzueOSGVnFPQkn3d3fcXcEev1+FUO6nkg5CvQ5M+
	OMH6o4fJhU0Ef4jbFAAUGS9wu/MmRxr/Jnv8Rn8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10c908bd-f4f22f5c-9e8e-40e3-9466-ff07dd4516f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9105e5bb9a23376776ceebeb8e4ab9d60421b11df1f5fd0a614ebc0fd5ec5cb6
Date: Sat, 19 Feb 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645254084
