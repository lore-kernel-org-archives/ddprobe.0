Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54875EA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgzNA8H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA074C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697417228;
	bh=fFMluA7qVmjzrucYjBSZRSkB4gLP1tZU3q8NbxRMq64=;
	h=To:Subject:From:Date:From;
	b=pgzNA8H6AB3/vX/8Py8ATsQ2N6CgVl6dJtD+HnKiPnGYl0X5edShue4c1pIJ84TKg
	 kSmwSLktJoViL3KHJVi96JB6U7OyT/HOaZT5D0tjhWVSDGyYUKkPU+zVmSKs/8Tycv
	 hDARMHGiaY87VbDtwrYJnco08JR6bg14kusLTJXlRkCsGu2gKGmxnnh83k+Stm7suI
	 VvHCEbcKZf2PiXHmmUvj3yxLcCe5cNQq9VVHvKWLJTiWu/CYupilZvY8Py7hiFaMc4
	 0JBS8PsK4OnyPxqdQzEBlk+sKzC3XeYwnxID1uLUFdk3VBCMpgok7YqnpLzOvjM9Yg
	 WFytK//9twvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B7CDB47E
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169741722867.719.16624021989739537229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bb25815a7df87bd0d440f5fb2e459cefa8cd0b1d50ed8a00936fe242934ce2
Date: Mon, 16 Oct 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697417228
