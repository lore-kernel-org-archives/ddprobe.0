Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B537C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6241C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680608225;
	bh=O+368IC8QbOzDZGLSoTTaB6+UUeZ+Kh3brLeyU/ZPKE=;
	h=To:Subject:From:Date:From;
	b=rmCU61lrXbN1wfpX1qfxbUWEgoRc0srrm4pemAM+KMtVwbU7rqGHzzA5fIYKz6n7N
	 GHPMK7385p2DNQvz6pNUoYLCOBJhv0C3Fmi+jPs6VjNesrMZ728ij9lQhSc7hLI+3f
	 vkqNUAJOF66nfG9Za9pLJ8zVYq7xWaO+qCIcpILQv5PzCylu0UWJ7a9JavToHV8hxX
	 I2MVHV0WuUA8XE3p61admKeQNXH5dtPl0A/RH2WpL+93AFik6RgbEAybrbrVqYS8wQ
	 NWsxDEjqslIGb1nBCs6QM8TRUUhs6T5InlEN+o8c4LaNxCJiidDetYTGybjLhEyacZ
	 evR3YUyL2Ja8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D2CC6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060822574.26914.18159616939135346658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6076db98c79248f393a39d68b051ee74729e2afe6bc9ce57b908fc7c40032832
Date: Tue, 04 Apr 2023 11:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680608225
