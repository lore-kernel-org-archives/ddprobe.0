Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D787A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 08:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648886998;
	h=To:Subject:From:Message-Id:Date;
	bh=0z+o6HCU0sSIkNXT6Y1SRNaqzgkIpKaTSUInIeZaOY0=;
	b=Or7Szcfx1jpG8xplbOMQXQET21NzjsvnoK4s6yTxQNOariucvWrvUkGDck8AqXdk
	Esi2OIDZmuPBSM2pc1Y2UggXR9qjQbEEG+MJdNeoRjlaf+3wnw2LnWVPfOLbaB2MERj
	FY2rYg1FN64VBiRcfoVDAbzBKrvKKsz2K+pyjNS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648886998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0z+o6HCU0sSIkNXT6Y1SRNaqzgkIpKaTSUInIeZaOY0=;
	b=C24FGukkXDOpcDID9ZmisQdk21fNiOIH9WW3/Bdr7i1kFWj6ZNlyrXOPai8Jlsey
	AqduSPONjufwZ4fSsFBlD1wg+qR0OqHwO6YJCI1ll4QcGrfqpHubcTVjGLDz6pgvi+L
	CcImqeZo+tgWXO1dcOs9AJcX5Rn0gwfuY6uW+A2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe952e4ec-9d9e73ce-a39f-4cc7-9002-314bf1d59339-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4b48201cd56ba3578fb32ed14cbe3559cfa69e01439c0e3bbfb327d3c390a08
Date: Sat, 2 Apr 2022 08:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648886998
