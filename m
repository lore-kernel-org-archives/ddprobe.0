Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C2C10E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90A4C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679292425;
	bh=+oB7dTmqtGe13144ipEEm28vJh1JbaI30DXoUgLLzTI=;
	h=To:Subject:From:Date:From;
	b=Npsg9WaCfbrZEa/tuoozgdNhqwck8naX8eS8KBsTC2ajsrAOBPghAYkrNW2UXvYWk
	 1CnWoZXdVzEFvAdBTXalDymT0lLFNcgBK0oBz/RSx2rYwMftQWlROBfI9lTQgib4iF
	 5MUXS/lySYaJTDBDeaSKideugINxkRV2NlhBn7NCSTq0KhC9NVmGcJ+zPIst/50Nci
	 FuakhSTzT3jfy9o93ssYvsCzheEFZX/jZ6X1b0Y7AL3To3uCnrf9UxvtvT/HsSLAnl
	 BdOeDFbEn/S7KfusQDAFMDxgU+ilGXDb3lSk8onj5wiuvBT07PFjvQF2NoiaWChwGZ
	 Nnx4+2lmDt85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45BAC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929242573.32493.17836263205618918104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec33880cb28b3467816e129c4ad80450df5cbaf8d3b97dbaf0e7caedeaa5b80
Date: Mon, 20 Mar 2023 06:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679292425
