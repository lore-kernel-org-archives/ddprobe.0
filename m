Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639C0174C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EF5C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688146388;
	bh=483FNYapoL7HXsNXl4J6EatkAAtjO6SBBFOJmD5nj1E=;
	h=To:Subject:From:Date:From;
	b=pQlVyWp8e7DBWTF/qEOFB1eRIqCET5W1jTbY8w92pSgkA+1u0Iue66B2XkozJsz7c
	 GhYWIlEEGZtJS/hB4LEnNxkdHsmAqklY+aXTke04N+qGY7qd4b6hijlhu7DLsiLJOh
	 5zYitOTMmqqX2m2anht58caTRZqpN6JHFeHpAY/4ptJoGF2DU2gy1RCA8v9BoTzvbw
	 OaRD+IyPbJ26nVuBNOUzdZt1dmOGBRF/ka5+EnJpCLg9ePxCWRMVbg4Eun3gLKuiIg
	 Ib4KyP9cJyB5/WEpTjngm5NZ4C91kQ1KokS2dTQtU6tlSxA0+iGo6gGeOZIrRMfXQq
	 AyWdCsPK27eTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BACEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814638873.28770.14048020328458865540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3044b93e8ed374aebf9dd90699a2fb840ea579f9740946a8544f9a935a1188d4
Date: Fri, 30 Jun 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688146388
