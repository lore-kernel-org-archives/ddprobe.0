Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B7217F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C46CC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670298054;
	bh=vG/ihYsiPZ6ehx8Ijx/ek0Yel+VpXvL61KVqyRmIDR4=;
	h=To:Subject:From:Date:From;
	b=MqewCq/dCHJf/F75ruEjAyz3JpHda/z2nRzHp2NWgXEfGYgqDqDG4OizLEpCE4j6i
	 HLkk8kr33t5FeHCNALkQSSZ/omAw69M/WB6zG9v1BLOV9ya8PQIbyLhDepQhqpwqCn
	 DQ1pUv4ZkB1ksdItlIL/2fmethVfyZ/FibApij/rFMlLNjT6RztTkWS+TCn8N9ujFi
	 mZZlGlvj3DtFk+5aN/K+tczO94A/Nn7A6yQiwMRQ9pQUhyDqEeUT7xzRW9ChOWf58j
	 mzjKAaRTOASPT/Ir/sLP6j2kUEWveLmceAmI480JGZEmIY0Fd3Zufz8UN5++wQZYYy
	 91I+kS7vQBnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5521FC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029805433.9943.5807106279186268501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d4d5e9c938c23a4a08e37cc1f3143229cee367ee4371f50b78a19e3ccdc96b
Date: Tue, 06 Dec 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670298054
