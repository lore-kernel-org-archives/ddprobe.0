Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A99FA934
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 08:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E51C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692779048;
	bh=2d7hntQ2cDWZ+UYT8uIO81VXMW3FruItXgIF+85RbU4=;
	h=To:Subject:From:Date:From;
	b=LGl8cfABGWZUxDQ7RY5B+FsbCnnICZ1c/RNEjK4FTtuI1kgSYDla2sKYJGgRis2G5
	 wqcalV7LQ4wwiAS2gqAxYEreUh2L5RRppU4SnmPh81R9obkooAOiuV9d9FLDtiLJEp
	 ZAHRYm5MMQkRRc0a+Gtt4+Q6cYKrmG2QlxxZsaKu01s1SBuTjQ00rwZSmn8t2D/Y8+
	 AdXRpryIW09ebOt4J/6vtm3I7pzXLZbD2kAu/9tSxNE7Im6p/xL5uDBd4zOWSQMzme
	 9hTBvetJqtV4EgQeWtGQO+FGEtasaXtJwqfowgIx3GFHInJ6bb91FghYhHDt7plUIf
	 bMnLnSb0S+ytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F51EE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169277904867.2618.4790996254759577364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c6e82cd0944470636deec62026a4a5bfe6d2667b07a6f60377fc720530fcd9
Date: Wed, 23 Aug 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692779048
