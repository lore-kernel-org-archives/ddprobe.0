Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66866D24
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8707EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670611887;
	bh=pOAfX/o/FL7MdaoWCHJ0ft77H5oum1/WFC1qGC4ZErI=;
	h=To:Subject:From:Date:From;
	b=tVG73v+DixoP/yjE5dWlEKqde9W7q0M4CqF16+siOobuvHn4e5FhIcAriB50ix3RT
	 NqQx3eDQeRPwxIWRw9Vc1Dy+nZykOgmqTMnwY5EwZ0xigpuykaKbnbjKL8MOyvC8o7
	 OifXsJI02MudzJ7b5o/9/XrHgBVK9SbqctEQtTQSDEEokWTJ1AMxSpR/4MqQUvwo0N
	 G9fvIs0OFbcMprNQOCgiUqFF40JW8YdWtIyLM9Z75u7zT5v7wSOLMvCIJJwDnCarMl
	 i/PxH8dxxD2ebAl7OR1ZFLD2zbJ9E+tFZKoXjjU+g2R6RJWslI6e5Sbti9Lav7WDh1
	 4Edfn1Yi7EbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C42FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061188743.10497.6620355937977870385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5cdb5ed2e84e81d21020202f2bcb5f9c19c5971aad3a05448eb2182959b630
Date: Fri, 09 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670611887
