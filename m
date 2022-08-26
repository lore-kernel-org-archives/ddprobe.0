Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D310723A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79517C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661491852;
	bh=udwGOoreuCa7gizaAAarj1ZrjtfLRz9lpUH0BThJdAw=;
	h=To:Subject:From:Date:From;
	b=noS6jzlMbvflfiHegQ/O5F7Pp//TStPkb8lIARpRmTDEnIf5yqCKEwbNs+imL1GKL
	 v1DR8X0hDYE0LpTXQ0tfi3v+97JOkQRgobMFcdlNiHXrt9tTn0M38bJh+wQCPMoyni
	 6LdcbYw8UMfBRgqKyX2Sl4nDrMr89ne2WfvVlsaJuwp7nzM7P2KL/x3VmI3y3qEXLt
	 eTAFGrsWP87yNEaI//2zUw4o3brgCHns+L/yyNk6iNHVFDrA+ZmVoJCo2IdcAMa4qU
	 uOLua9WyIlWLASTEjbOknV2xoWNqr3W4VRlxnibR49OuXXWZ6+TshLwm2UauIewN8H
	 jKK2O7QUUW0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56378ECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149185234.6992.9510048506979993685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7f672c8bc5751b3a95b97ac79af174cbe9f64122aab47be9c4ef0af72f29d2
Date: Fri, 26 Aug 2022 05:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661491852
