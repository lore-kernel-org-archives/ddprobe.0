Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64066361
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 00:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4532C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 00:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696035368;
	bh=/fViXGWokwvv/auDbfUzEkGtQ8EQ9+IDLq4kQNPanPk=;
	h=To:Subject:From:Date:From;
	b=APykqY9bAG/jOF3QQv8jS9I9IP/ZIW4vsh5GYctG1Khm+40gsH6iPT6bgPE5n8P0g
	 +z0uqveY9bVZ1Mx7GcZmUgHkuGHxVKFkIutWlni/8QHjEDKBiaigWmDuxmS+8B3LMC
	 uOeeu9N6H0KH83MBhfBcW4NfRafKw1OtF9De0Uso4lbRdrDblsDiy6i5BxQUqK9TX+
	 i1bZNN+0JCoSrC2UvhBIFw7j0In/DQbzx+6m3LrClbD5031Ha/cSIIQG7wYEORdXve
	 exdzJYqdYS5g6OrhfZktYTGlpjd4qoCyDZ+q7NN+PZoSv8pXNrE8mrS7i5JpizV+be
	 brA0zRBL88zfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FDAE7734B
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 00:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169603536869.5877.10854552116423608606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8027c831f932aacf19a4288ff1a4cbf6ff8ec9b4062b41dc75942961e184e0a
Date: Sat, 30 Sep 2023 00:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696035368
