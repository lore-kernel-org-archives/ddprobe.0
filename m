Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D9011719
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9quMMHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B1F7C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704059896;
	bh=PMEt+wfHQKuSyLcNVyIywaRKIzv1oyNzJ6YThB4YFro=;
	h=To:Subject:From:Date:From;
	b=E9quMMHJSEnRfYMqbgQOC420bSIaBilky1zAq/RTXE9sOW34KlzoxsES4x5cXS3wY
	 pt0Vp5+li6pgX/sT3gXPPlAirs5GRe6AwRnkdO1ISUpwHIdq+lyjaSgzzZzOFHUfo6
	 0izu5Ybx3CT4Ybss4+PAajbs5QayqwxED9y13ljI0TmGYpryA+a/mJ/tjM6KERcHoD
	 6E9CyZKNNvX0oa6WzP8zc603RksUfIf2NOY3HFGjeSqaNs2+qAaraZWXD9S/ZrJmuP
	 hLbUC2R2mzYQX6cbGPWl4AHxu+AcrJrPNF96vAQBsIcvply+SW2jTTodMZS5zXdEWa
	 h8euwV2ayNXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB59C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170405989644.11649.17367554205911731580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93471052d7f64a03ee0fea9bbe55c099ad676378b8dcab9a2fc614ff2938b7e0
Date: Sun, 31 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704059896
