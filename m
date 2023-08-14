Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BB739D
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 01:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC539C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691975588;
	bh=h33mm/Z+03i3He2yQE003/Jhpb/afno59XJeLzZRMuw=;
	h=To:Subject:From:Date:From;
	b=rsnNhuc5AYk0JP2ryF+f7wJepzLAi0csOjZHLhMA6Dw+H3zuciJW4PpU9rtnBkpQl
	 SVLcE9xeukTObi0FSRSAxxEN6kexUVNNwJoGHDITHpHKaK8lajIRvvjy+5x5du952q
	 uFi/l4KiPNY6HYGMIdyYzRcWqxIWny4RfZLt5BvEid54l8TLOPQa95wwsCT7PKXX5b
	 yxOeMWNl6G/vNp6OfAyif2x8HfvGxeRqRT9bbliQazAlk4xTr0gGXLOT8KzTCRzQRO
	 XPzwFjFN2AQoC7FDs5vbwBjcJCpRklfrc7Y14b0GXDmpmfYY5Hz0Y+SArrJe38xHwM
	 OVMeOPkzXv5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C32C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169197558867.9693.2556225638915679499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5237c849022e7b2c43224bc01c1b44cf978deb617224fd0252bd7ec2d28cc8e1
Date: Mon, 14 Aug 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691975588
