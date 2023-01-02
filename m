Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D642A4430
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE76C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672671087;
	bh=21AZ9cEjNj7MrjMGR1Hs5W0H35Dpdn+dHkHHbgXeZWs=;
	h=To:Subject:From:Date:From;
	b=Nben4pxB2iMHDm7Drmf+tFnb3aA0tUQa2Nx+HSaXM/uw/uX0TnCshcbRnHFaPLgkm
	 4VIdfrAkjLdDjY1yn+fGlSoj+EHfyYBmRyEE9/ZiOxbN889118Q8AL0Jwk50YBZS1T
	 NApHaGvDKzE4f/C762J5yQZKnn721hLmAU7N0yC3msObSV+DmF7YDHAWTWobsyw2bf
	 b2w6uP7DTRzq7xZhv86Z8pwjsoTuTFDEE9EeOMFHlXToRg1Eyom27rK1bYoWqLxjwE
	 nDbbeb89UqrKlhu8poDjnZn5rQTcoDkPzSsuiMrRQrQubpthUAOVXtR+uz9gTCAkex
	 e6p2x3WQNFJng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B500C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267108742.26807.2211560226398743522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e47b9d1b44bfac8b053b97ab0a430b50a38db0e87b17512b152874493a881f1
Date: Mon, 02 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672671087
