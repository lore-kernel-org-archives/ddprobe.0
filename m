Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDAA57320
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc643LSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 839F5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705005496;
	bh=UTpm/RNXk1ilxLNAw0AOdBPe5cTn5FiuLfchLOBtqXk=;
	h=To:Subject:From:Date:From;
	b=mc643LSZg7Kt4V7Er7lANOYxREMfV3r8JDxyh4u8sTWT/gEYoPlXt82+ioe8zgtBo
	 9+rQdZX+Domfvp4slO1xurZ6xxsFLKQfJRoZEfaYuWgWJFF9e5wg90YkQyILM86lu9
	 Ai9e4CYpSMUnrf2BD00Pe3jZfmm/BrnNr8Lf+DQFGYXyMQPkmsWuooHIs4C2qjb0aZ
	 hswDv7fnEiJPF2QkGct1oabbqLTA2PKQCu/qDR0Wq1jBB8XNd4FyPg7JWRtD+dMY+n
	 92xtgu8+s8/YXnotvreoIhUM/Svn0Ix0uByz8trkL3nVeE+L8CHDTSlvP5iWP0+aSp
	 C3fSCwfNJEizw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6595FC4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170500549640.22152.15835843899314848163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a77ec2bc7edefb4ab7821ea0d5fcb6a57437bc46e9e77d1d6fbcf7ae3b7de9
Date: Thu, 11 Jan 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705005496
