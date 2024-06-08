Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6361418EBF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717827443; cv=none; b=nCm0e34uVPkCKCM1XvWYkRHacsXyrZFsPOhtyVP9KVUytO1xGk/AwcXsAs7WAcQ8wqQhAGRQ+pXEFw3Re4bSMC5m6BdpdVkCWlOWqa0rSdELP9iVIGupQicy0DDXf7KbHRNM7R3jZV37bKrG/QVR/sz2CduF6WJ3cxAfxWFDRoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717827443; c=relaxed/simple;
	bh=xTdIKcxRxe9Kdcn6GynNexSkK5lJdwaWdsoaQohlRgM=;
	h=To:Subject:From:Message-Id:Date; b=oYb4r0bgIx4Visj7iAaSGfESKy32Y6jz3XFs5B50AV8YkG/uJ2g4xqvRTtNzjnutFJzPFjFs/6Ij+MWR088QqzDv9kb0crgt5OEu+GKUe0KDwlz/ph4++YWmWJrcv8CIrqUBUTpn5qyewMiIFFy/lVdEfVN8cWlWeMjRsRkt5Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsVsFSXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsVsFSXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7D6C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717827442;
	bh=xTdIKcxRxe9Kdcn6GynNexSkK5lJdwaWdsoaQohlRgM=;
	h=To:Subject:From:Date:From;
	b=TsVsFSXOQ0jJ4M4NlyXOtT5FqGeAkfCImu1OEd0eIyfyvqvan/zh45UBaDYCNnqsS
	 Z8w9xfJopAvBpgem+/d0sqRAXfuHj7uyFGMgq+K+77WZaRhCipqFVIrvFgpcoKDi0O
	 Nq6yiWndn4hXCWFVLbg+hC/p//WGxOV5nJfRTWpzsUrjEZmYbVFGUHp3DWcNBVzJGY
	 oRs/LM7sN4Zck0bQktlfsaj/+dm8Lw70Zkew3seWmlcKfhVQEm4iD6wxiKy4AaiquV
	 GpOevdnalB9HKjKlBE2E0OFog5i0UvRhsQVrGzXiSiz8fFr7JTMTMrFaTEFAMZ3YgO
	 R1IgLjElFimnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58D2C27C5F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782744279.10755.13783495453642774957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7724020691907e91cfc20e393f4532758891256c4ba71826f1481a58e08edc74
Date: Sat, 08 Jun 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717827442
