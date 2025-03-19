Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB111D514B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742423994; cv=none; b=BFNVNEgP4gHeL5729ui0f0ZgUjuuqDH1Wu9y3Q0rkmXl/iuH2NLszHm1uR7MZWTfqk7q2hM7VF1geOTxEiqP1rCZfyx68xSLcY2NjpBBZpC3vPkh3k8DlZYOudOuu+9dFqUltOKhuBWIMuoye3zI9JxoDi53bX0UerZDzh5Dmvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742423994; c=relaxed/simple;
	bh=E9eBTWSoILXSaa446x3ubVw3+s/P3KbOuJbk5X+cRX0=;
	h=To:Subject:From:Message-Id:Date; b=nrPmmjQIzppwfIAZGDFbMUjPfVW6OFbrWqFavhZOcKcKg6e5mqCwqOdOydMa1GYDGAidoHiRn0NskUB0O3C40F0wbsEzZpa4PWQttBkYV0a0ZI0InaII3tf3I8LTbG1Lt4cYOHy4zTlb9Neg1R2IiU6/7Y/O3PfL4ACqvDNmJvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWbk/Yqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWbk/Yqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92B6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742423993;
	bh=E9eBTWSoILXSaa446x3ubVw3+s/P3KbOuJbk5X+cRX0=;
	h=To:Subject:From:Date:From;
	b=LWbk/YqojxFm4BpXNwuKM6PCdvX4T011ffF3oZ/7Ybgd9gssgpJxOWtI1Qw/YFQZG
	 dl8Lncj7WaEvLYHfecCPWiEmDUshU3Obq7nLP8G2HZQyUN+uhxF5qd/4dbAc+9je7L
	 P16kKPCOis/36OSbqx10KihVSt/BnEg4SJH/GUmVJ6iSBAH1dn3PbMFfod8n6YApem
	 KCWJ+U00t84yxMTp0zDXvJVYo/ScjqsMTbswiH0pZFLp/m8/Ds9T9Z9zv2baj+aqer
	 sgIstVPR9m7sAiegWx11KbxAfX8dmGCZX24YtX8dd/V7pTks31DuanfclMGKrSywge
	 1pl7zrFc+d4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A5FC36000
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242399365.5482.2295693424709413647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826da3547d72e772ade0763a1479a3069e883637e56d89b19bcafb6c07887278
Date: Wed, 19 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742423993
