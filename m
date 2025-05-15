Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622C0200132
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747340394; cv=none; b=tn+ZAxjVVoh4HDG8GM4ZTO/NROQ2Sgi1klJ83nDQWJSNkkledN1XlUsDCEyyM71aHSeuY5XcZRC0xnziNhP0C6YXVW4VcKooGqDPIh0fwqPHvNsV3ThG26ctnX8oBdw8LBPhmHsj+z1fDlQ2zC4W7O2SoTgPhVzNSjBD7n2y7po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747340394; c=relaxed/simple;
	bh=Oc2gf0qfuAkPlXBUd6T17AblmTNXc907SNXNdKAm+ko=;
	h=To:Subject:From:Message-Id:Date; b=K2tfFBMSrbWg1/JEv1eLlaDZkd/JPGwLq7k9eJxhJWa43e/s9EWINZOGJjOZjMRrtlINbvPk4C4wdm2uxipFEIPjmy3XDYUjCLUHEa1U2+ApqIwSITP1NO0ObRB0MxlVltCYG+7ozgPSR4Y67sYpN5islGH/qGPtI719aGbrV8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gM/8NdlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gM/8NdlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D8CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747340393;
	bh=Oc2gf0qfuAkPlXBUd6T17AblmTNXc907SNXNdKAm+ko=;
	h=To:Subject:From:Date:From;
	b=gM/8NdlJHM5a1nK3ikEEqqJ/Xa6BWD+UQCKpYSeKZNDkbLZ/mnJnE5KHS399CnL1B
	 W6AgbsNih9Mghhp56UnJnmyiWQy/mXglnoLZf6Dng44vGrUYvLOAhn7vOeJ+ghMSJi
	 YCbVgLFiJQNiNdw6hCQAxC/42OMBKB9EvvHfEh1HVbQlgR2YCo+9fpju11/AuT1lMp
	 ro61p98fraD6RJcNNKXcjfbyYqVb35mk5QpESYvV44owa9s0fJEGYKH61YyMO0fsyA
	 KpxfXLbE+Ev3ZRY+0Cc4K+ygZmpJzrZmV9oUUIgd7Nxn/fO74SpQk7zCAP1MUQEE3O
	 kHGdQZ+mFdQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DBCC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734039360.17909.17074571442103268357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08bbfc8045d1f00ce96af98bd48f3b51cd15d57e4823353461c0132cf2ef2434
Date: Thu, 15 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747340393
