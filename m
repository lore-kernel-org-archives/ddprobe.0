Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C834F377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794A4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671151287;
	bh=iMjCwShx8ZMecDDTv9cYZWhaf8D7xtOteRf//GzOdhU=;
	h=To:Subject:From:Date:From;
	b=rVUP/FU23AyNb6VG2QGmzNZOJO767FBqrkqGzmGIvsVZFZDYj0ekSVOMsGIyMRncm
	 JnrnE/H/pB26eVt9Kq2rR5HN9XSbmYW3JJmr3tXWEfNsii868IyXfVz/DOFfz8bzCG
	 z0etQ7P89JRPLKkhkJKQT3PAUrRL5HpyWHjuOjrswguEBt1rbcM9FQfHbkUpOGiHxP
	 b0gDhXaYbnTzuopHrGNfdDSZKJHMeJ2UeCIRk9Kv5TVDZ5ZfBx4winiATDuKCATf4Y
	 kES9rqpiGD4w/e7+OQ0UQtStGAC/jfAv+URbbK7bZ9xE+n6LxZ3fcYGD+HgVGbwbwE
	 rg4lVaPP1KI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64093C3DA79
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115128740.17317.5593870633105554220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b1fcda883fb6c45b14709a5622aed7ffb5fd52f931c16dd7e877f9cd9c0dc6
Date: Fri, 16 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671151287
