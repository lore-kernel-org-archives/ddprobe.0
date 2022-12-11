Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFA81857
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8581EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670748687;
	bh=Cl/+lgM1FIp605GDTz6okPltUYdenw8gYLM9Z/K002s=;
	h=To:Subject:From:Date:From;
	b=IJHRLhPVcEyVRrVya3iLwr6eBwol9j+Pcg6/71CI7jdt2p3mYzCwcy/7E2B4MGn0E
	 S6u5xfh/+eXaoGn1nIOhd6pzttqBoIkufO7rJIfj5sirur8dqaoKSpA9bZlqXcQC28
	 l8P7tAOoB/irhedGvpXvyYn1/70xXNg7g36Ag71JH9jAdMVsdbo/aHXdofVN/qvp9z
	 Mi9EteFmQ7g4raX17jVzIp4Inc+lGRk71f/KamaEyTuuZzNJPbNW597RwxsdtdHBvi
	 uw/JWK/ePWnqP+mF0yRvqg5pClmOeEpxKf3LsFcbnsLkxgdJSqPn/rE90CiBoy4vdL
	 lrGrOeN5YKsmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FE9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074868739.7939.7084939376401699541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccfb27f36914be4ff6afc94be8f9c49efbcf69f666ca63550af180479b88936
Date: Sun, 11 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670748687
