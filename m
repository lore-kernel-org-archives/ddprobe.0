Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5DFA4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686B4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666748453;
	bh=3Xza4lFlIklLYtm+Tw5oc4jxYM01/yATrjP5BZjhEQk=;
	h=To:Subject:From:Date:From;
	b=PRlPXAL8lKIWM6j0XNNGCXRSg1GvJDXzlLGT8mUIyaUWNarmF+UR1pgr+OS/SorpF
	 80ruEuzlpvXkLOYj38UQGgExE/MeaqLRHZiri5l1mj7LEa754Dp4F7SErWacK63o8/
	 dPblBt2HYUD5Lm/w78bESlz9k4c553YJtpNim2P8sRCsYqNZ+V5zypht5Q5U7a3OwM
	 PWHWAF5jHMmH+NP/180OT+Im/fmVfiyfpr7MMpUYF9DIHrPrB2HRVCVJu/sydsBsov
	 1TeLlKr0DTms7hmOidJfzd+7VLxhxw0yEvAFyxDb/VwH99ThjLmYqbTNe0YW+RXyxs
	 BMTKXR8vbKa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5246DC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674845332.19666.9836759150285011364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5a659b8540848a1eadfa327e0f0d09b9d892c633005855cab71447784de2ed
Date: Wed, 26 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666748453
