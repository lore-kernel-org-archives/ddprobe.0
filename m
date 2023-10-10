Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D31517E
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 00:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+RzToyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DB4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696897028;
	bh=QyA9h2DCzl+QUF1EGH0a2tjHG1+eQstHrsPqD3ciZ1M=;
	h=To:Subject:From:Date:From;
	b=M+RzToypNDuImEuiL/DKi0VprH0vbDjKaSGbVWYVHEaCJh6+lGyDU2azoyJ2FGHw6
	 kWK5Y4LSrI5EEexK442Z9s9r57aBTplu5BF1evmuCbrCvCVp0XOhDHllqT7MKysZwF
	 Xukyt87zEK70MPULyaviFUcuqH913hd/FBrr07d8+e+pcfcvycO8RBbSJGAC9sqUr4
	 JyfmsCYRJFGylg6gqBrAeS1MZNy00WMgpMlJd0wLjxLSX0mq/aHvWfda9oc12OTfKi
	 2WRSSkoypNIfQb5Vx1vOlV4kLxITjnLXLSGFp0bTTSL1SRSW4aO5WkGOUfWCCFn4qq
	 ONQe75xmOKkvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CCACD68E0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169689702868.20221.17786687258953756430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818e593b920aad5c053c073c17e16cb44a250ad5dda2fb4aefc80823e4588ea7
Date: Tue, 10 Oct 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696897028
