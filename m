Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D767FA481
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81241C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670543487;
	bh=3wPQUG7i2Jbm/VW+eQtDnf68l0roijtxWAJaklshN64=;
	h=To:Subject:From:Date:From;
	b=thfe6O8LrF20EzTOqUh9I8L+W8TGpwts0+JGkqF+KJpiz77XTeM3eBeGJGXm/xC7Z
	 LHpfkIAEp3YK4+7SvNqCZMeQQ5Ah3ZrYj5wrl66UmCBFGp3EoUH6COS4Gc5uKEOZ0k
	 mLvNvLyKjAd2rrzQX6lZRD4uhZtzYc4ivG+gidOrpuXf8WlwF66qJTDA+GAPxSFQVK
	 o8ypBdQF6GDUaiXWOsw7s9143DF/77C7MWiJ4Td0B1hyE2fOwqbpxt2J2G6lCAQMyz
	 e7o8Y6AbQdjFKd0MqwePJn2ScM4Jyo75Cgr34a5D/HaJXAX1dq2TlLMBY/WXnP+dIB
	 lHp/0FBzGoFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6866DC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054348741.10539.11123041960935073391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90ce35026be0895797d371e22db43e820d374acf07ee8194d67178becb664cc
Date: Thu, 08 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670543487
