Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA567C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 00:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BEDC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 00:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686875348;
	bh=KrqfoBNIDIWkPJxGFpR6Qlco+b/I9V1YFv3XtXOicKA=;
	h=To:Subject:From:Date:From;
	b=rS//D0h0ne6NFHVxO89aTZyuxQorJxCma6UoQE3dbJKKr0QLx7rFA3fvEXpCR68UX
	 vpJJhfaTKdC/zkfColDAK2pPUluJsg4Of7fAxtgHRi3VDtykdx7+FBBo/+Dn5XnCmD
	 t9kRfuJcK/gHRnpyJMaffdMRceXJYRFpPf/owHSjzcczc4nY3JI63kO1tuNxhT+UEO
	 WL0UDzaodJEbzTUGYgM7RqYO0sWes4XZpFUFpyJZxKRlrZtSPVXxp42q/IXKWW0+fu
	 WfTCqr7+R6oKobv7fEg1gOTXdcyrqBy4S2QUVJacHdF+VD0KbfkRbplrRPveVZTN0Y
	 Lo0E+KkWooL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B170FEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 00:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168687534871.14333.11098508905772793539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63491493d5a4ff331b84b55ec32071d483078fa6730eb16c801de48503ecd34f
Date: Fri, 16 Jun 2023 00:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686875348
