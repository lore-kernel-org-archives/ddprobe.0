Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F4117729
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E899DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688761628;
	bh=sSAI8Sy16cyHAkzKd4iwyEfkCsRix59OcHMSbJFZQi8=;
	h=To:Subject:From:Date:From;
	b=IRdi9KGc/yRYNRcd1WZRoizUTlwY7SH64COIGRsqB82Ydk4Y430es5kgUM/JU5bSU
	 rn2P5q7Pmls5OODf2GxHFAxpCR+zDXR+/tRlpMjRGrGyfNWdcfhGw72to+SO0dHjbE
	 sCa9dV07VfE2lWE5CYOXPQWz9C26pPH52unTZD/Ea+6r9bx4c+X/n3gckKsvVsB8M2
	 u2qNcW4ZlpYkR93D1KoSzDW2qxwaO4wMzxTNriIgS5rn7r5iBMP0Fq9Mp4vCGpRzGy
	 qIYCYv3iEZ2zbR/E+HgpUZUIEPTL+K3rNBj+f9tYKgnBQNblMDashGRtcQaB8F8AmG
	 ERfAQ6aBbMcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC28DEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876162869.25218.14307083681813935281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8489530217cdcdeedcfd096e1e2a61a75ace3b583f14edff652bc1fb8e60cc30
Date: Fri, 07 Jul 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688761628
