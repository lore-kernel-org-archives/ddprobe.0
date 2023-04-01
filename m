Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8787319E
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 06:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EC05C433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 06:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680332046;
	bh=B9vuIGpEN+FOsCI3tFqdpZPrrJQnXam8Gjp38Ow48nk=;
	h=To:Subject:From:Date:From;
	b=um+OO3VjB0IrAuSQbwaxcvDrccm+yF8CmMfHRkWV0OcTF1R0GrSd/PYfAI43a3CdE
	 j0zn5xXPoyl+tOJTdQh1ydEpsqxUYKkNdYhyYrc8Vx7DSYRr0380X74QsmY41sGk57
	 pW7lY9xgXCdSynepQtp4Tky2lsOB+8om0aNDRA+h+vpEzF2106tv1BZpnUPdNFYTPW
	 6FVNCr2d9Y+5/sfcHFjMA6Tt3mmZYk1yYYSwYe1lgkiNf2Xeb7TEqa+IKf5oTFEfMJ
	 sRbFWDDrFBudkKu6mWGmx6BcaEVAvFreMqZZW7OBZX0J55CO7PVFcgypTrDpw+xKRY
	 jNVmCxMmFa2jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1AF4C6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 06:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168033204584.16441.1774484278167042119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cb9a5e3aa0d83b81fae12f4009a96bb1249fb0ecc5017b6d8dcd6c39f9d7ab
Date: Sat, 01 Apr 2023 06:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680332045
