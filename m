Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4F829A2
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A49DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667316054;
	bh=F8stWygNHWa5Tg8IXidR/Bua7/1aOhwv/0Qr4y7VidI=;
	h=To:Subject:From:Date:From;
	b=SlL9QHwI1+jbFODDXE1f3BkKDIo6QXdB/20jgyl2iASrfQswntIPpKnYww/1bE1Ll
	 iblFCBVXRcbA/RDHkKuAfFFR2idZQ8OPbG6GuQyZ1i7ooBdqLww58esZh2hHbZtFyl
	 PdW1w0fSdthAkLUXZ86AH11r3enyBlkrRtB0Y1pZd4Hbq0XQB8fuyi+pKz2R7+TLUx
	 OZdmQsSJjvRa27jdw5cyu5AKSmrBJ1CkcaqkrmV6TioCMxc/wsQvjJWHGbbWaKgDSw
	 tNw3Jj96Fohw8LqgulymPwwZV1qe1uiyl4I1yQdULsgRM7svn0fjPG4pHgy4QuVDbu
	 ta1TlQlYvrtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E374C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731605431.16513.6360164610827601744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0bfedd633fe1737f71131cb2442138bf9846fc50c5f6382b295839428da3eb
Date: Tue, 01 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667316054
