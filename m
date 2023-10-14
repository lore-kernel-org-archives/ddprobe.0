Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE5E7E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 00:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/F1niRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5796C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697243828;
	bh=T1COD6ybDOppMcgna515e0RbWvQbIe+oqLJZ591NtvE=;
	h=To:Subject:From:Date:From;
	b=c/F1niRSVrgBYChUqeyToaZnxPluicu3BD8EcNVPzJEZe3o1Ut6t8lF/S21F2YGBY
	 pKf0NxISXJ5EFznFpkaGhfu29+wrRN5NcZvhdDjxlzK3aWV0y4gAvLA92hYkPH+XLS
	 hz9GeFPvBuDI3dhUAClhwwwHrRP3e1RS2J8BefwZK/ER8xPI4fyySIAoQHCLlPN21o
	 7/+HvWzUVMFt814gVu7nB544EQJts0fZH492cW6QKhDpu1uqd4Pu409bh7cGhhiBCL
	 /lWWa8kpCtjG26YuVpkLj+H/FzRXhjZSzzrkcwyiQWoCK4eINvXGz1VBPoA9Y4sywX
	 evlcB2PYkyZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCE3CDB47E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169724382867.20742.932594026032447057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2441bca3b4c7d2c3801d734292deb3ee588caf72dce3a990104b9eace0ef0f7
Date: Sat, 14 Oct 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697243828
