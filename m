Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEB863A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 11:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EFEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693136648;
	bh=4oOV5q2mgw7/ENs9aLV+TIPIfFQ36ZwNVwZf3LAzV2U=;
	h=To:Subject:From:Date:From;
	b=MJ2JxhXO8DxkeChBHMureiidvROVM38JkWJmEN17PLOteVqEMTuI0gQuu62bKhpYf
	 FvBsJkpPqbf/ubIf7D1VKvXArFuXHpPsfOiSRR1DpIapq0bcrR0bifxp26SGxgkVZ6
	 IRpGLYtxXovkjOwwKQ/ffpfy1OUzMjYfDSAHlkacuZjr3ILkwjt2OXmtvYyJ1jedhJ
	 RujqbUErLjLK5QCH2GW6RmmM1yWgJSbcBebsv+grDMvXSQQIilvqH8J9E0jeK5woJI
	 xI9xBJeJp7aP6QPxEvfOWQpAIvkPH62VaV02cNeXe7TVge6PPHu8gV0P/Q9l9rkBmn
	 2CscIFXqF9GsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B66C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169313664867.6834.11993219978017039445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886fd32b85b5628b6b94126445aa50d6c12ab1b185513e0d8297c935fc0256cf
Date: Sun, 27 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693136648
