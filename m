Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD05217E9
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74763C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664817653;
	bh=/aRyitOSLz+fU9xkux2OoOWf3yaJNovOvhcOk6177X8=;
	h=To:Subject:From:Date:From;
	b=dirXqIAZfI2DMU3K4fu0w9au8lW+I4GcYzryO9cdUpDngf2ivtSukdQ6SN7vc0ezW
	 TNBKY/fYzZojtRGZI/7I6IPFJKLI1AXQQJZJbp/5EVhuMnpUtiP/PCnRzv+WWGpg2D
	 VnM479eNOsPthn/U5OWMKam+RX3OsiOdi6RoDOWNltmuLVXDiSKDdHAneiv0Q0Th17
	 djmoxl5hAA74vENEQeVOs72D6qRx7mjZ6gctNDvmbw0RGm3EccN/FIN9xskOzf3HMu
	 3baPoeW4+55b6UF7OWU7wEB4hf0QMTPpyIUF1wXrFjB6E0n/0RY45oauNU6KCzEhIf
	 6wO0UHXmbehIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BE3C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481765333.22207.9719782837556405254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828c25115ab7ce134b5ec0bb67281ed21d58af726af440fc3a095917c8b55345
Date: Mon, 03 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664817653
