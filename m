Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D60323E
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 687C8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665701453;
	bh=NUnEXfT/0RPVWsTP08oepWFqPyobhuHOuWFHsUsp+Y8=;
	h=To:Subject:From:Date:From;
	b=g3oFlchi588FrDqXFya2GG9ooAxUwFUSPF8/QU4OgZpiwJEELQjobPKgBrMMVHXXE
	 qs5BcV57joJlQFwDDbkb9YRnWe/zsg/UeyptnNDoUJcXzLUyw3S7T82ewmPbT/g1IA
	 RisB86+REq+1xe0iqE+nwt5AOlCD/uDRwczTaMMjYE4ikH3M8BSB9rNowxAOZDGzt0
	 k5j9Vg9nlZwIYHFZR9JdEjLz/MSJ+CuAS/5NF20EfQAOa6LIquf3/Om1soInI0E7qB
	 1MgRNv8MjrNoMr2BUFCfUQ5tZ7zBggrprDevSuPJgbNiWm4rIWLSitGqjwUKQg8qHw
	 lzYCYgczLcI6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BB0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570145333.17287.18056139905128766345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f325dac4c09e04db615c94211bc07c206ca0968d98fc04f37fec4498d042078
Date: Thu, 13 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665701453
