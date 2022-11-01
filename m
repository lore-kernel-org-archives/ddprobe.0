Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AFB7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64C79C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667309454;
	bh=NhlL548kURnD93v/yLewACiICkkkhmX+j0KHcnuGNFs=;
	h=To:Subject:From:Date:From;
	b=OyyIx74XetVeGBshRPUvH0vUcU0eZem+NgoXT8fvSHEQe/U3fSKXO7Y8BXKIa30Fu
	 ryBDAf2y+CjmKm1XC42bm8FkzTrgEv8J6AhxP/cAOBafvCpfAi6uhK5bPemTf2bPLD
	 w6KhqKqwIXrZOECv5UqFbGxMAzECYfR6MtKhiaYXFGlflPExYQzSI8MK2RyQkmz+PL
	 EjkooPhyp13x+dPq0osEXkozSMbjDubgH5eQ7dcjF+Y4HCTOR31DnOB10jNuoJCScj
	 pPtgPD01BCcMmu+nq0+shnrZWFuw0DH46FVBGbbi3GCIdrI2JCz86F4PEYGGx6ccM9
	 PBgnVS3sU/6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F624ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730945431.14153.12677850299164387111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2fd4c14f870282338d91804bb5f23f1d77973dec591a989e4b2a8f7190f65f
Date: Tue, 01 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667309454
