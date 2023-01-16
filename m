Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D728E1878
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BCA1C433F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673863887;
	bh=PpfKePDiyivBwjl8HiwI1R7F+cOjLKS+VeuyQGfRo1I=;
	h=To:Subject:From:Date:From;
	b=eKndMFQshUtvEoev6fyM+Po7Ol9v2T8u/MgB6mKfBhbKk8fmgDgsr1sDrt9aY0rlJ
	 c3syXFQ0TIPkRRYTvQD83g/cr/Ji5ilfNYH+HC9YEmbyenGq5ux5jbD8+kURPdnco0
	 gTkhXiYFEzSscmWFEoXEqoK4Pbkq0ceaYGq0DhgJ1ZLv2nVAktQFkFGzt72UcahSXD
	 LYKGy7nTy/KHzxXLuwU5stgYE3OtBtHEl63J9gU4S+PgpbqOu22FacufUJxePjPU3L
	 YZdkR1eXmIYjdfRpV1rd31t9H9RYruSTW4Cm9MSohXqqN9PE9l8aZNB780jadJfSP5
	 QfyEk1jBGGKVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE9BC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167386388743.8729.2813933987883541472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a08e89de03766e3d4d4b1fd0e24298f6c59a3b3aa832655768c87b40b1f11a6
Date: Mon, 16 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673863887
