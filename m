Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE10A4C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C26BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666120853;
	bh=tm4mXenChV1ba6lkmEdgUVJAKFh9oFNTp8Ovsk4P+Ag=;
	h=To:Subject:From:Date:From;
	b=ugYQ7ft6Df39TsbVFouJf/Wnx48zOXFMtcqZInqoL5R2bI1WE4KW5iFoViWzwFg6L
	 ZoiN85ydgMxXN2YV7ph9YW9JuB3XQOkY8Uofzxlvj8s0AmQ3ExKW8+9y9OqOVGplo7
	 /2ycF8a545Lii0B+q+48ENonkyyenRcQ2UqZkf8ki65R3pV8SVmT2EWYWEaD06+7tt
	 dftZ8PPPYosL2CvQDbl9doC1MM/3+MUOD9A8w6ehw/UO5dnF6aaTb5IRgLb5vz80re
	 KSYvdokW4Kd0jtKWq4HjGApdChMiuGMLvfEF5HtgRjaBwBfSifKNAYct7mh703YKkk
	 glRyuwf6xlU8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53665C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612085333.5290.11558617698710709981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643e5f7b780e604d8ba974362f35986dc8da20a1644bfb145e904034d81db8b4
Date: Tue, 18 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666120853
