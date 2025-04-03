Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369032505A6
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743695994; cv=none; b=ImRDY6hl/3YLIMhgzmT+P561GRuV042saiLk4OUPESlNdVU53RRDNqQuVFkfsqzqDTvgFcXm20geCZrQNfHuagbCBRXDHYJqEYS/XlX+YbGdJi6+LXXk+Bvi8PYRwy7mg5eFJro1sp9oRNA4iTnns1yESIQRy4wuW3FYUB6xEiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743695994; c=relaxed/simple;
	bh=XWW2u6TRXNdXhWcYBvaLhrPF78Bn1yy61LFtBhT3lHc=;
	h=To:Subject:From:Message-Id:Date; b=S6n/SsreV9sjr75pLNUCJc3Z/58BuEij1mIR3Gltb+ww4uM+7ZPtBstd/UMHO5V+jzoKmNLSKI5YCNDCrFr1rhP7KqV6UKz6j1oJ7msogdMhwHLF1Vx/nFfb18WFoah438CfO6cItb2Tz4AfuEwAoba5Pbjrbk134azdhzod/Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX16t5tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX16t5tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6094C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743695993;
	bh=XWW2u6TRXNdXhWcYBvaLhrPF78Bn1yy61LFtBhT3lHc=;
	h=To:Subject:From:Date:From;
	b=dX16t5tZJeU7mAxlF3OCnXUMpUp0Zx9vsu/DrIsSUXpLJP9tSjqZ0CfgAfI8ygRpp
	 ipCenoNxSi2yk9TKeRDG3FdO1N+NnqaWxeL5Ymk+t1NB1YEQXiTebu8dhoLVD5wwrU
	 uI/hDsuileM74ZTtZBthwfZ7PHeR2EP9vqOLI3OwE4aCzzcATvFz9keF/H5iobHqm2
	 RvEaA3o8+WcwtyOTwVBp6R/GesvLX5aeSjQB28ehNR+QR8E7pqcjUNBuspr/xnzEK1
	 BpttdxMkY47dIJD/bpIcs/sybZobvGlnlBTHmV3bksg2tA8mO2xbDJBLF/F7AnwcwO
	 F0poo+cCrSMKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FEC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369599359.12461.6669635565166976300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90124ce3ae139a899a71eb4195f4b9c68e0d98ac410fb667ab15c90ba8a3777
Date: Thu, 03 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743695993
