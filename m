Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E045D1FCC
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8E4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674015087;
	bh=yqJuMXV7cCRAk12l1pdA2Wyjtqo6UDEWLV3YLblHyXA=;
	h=To:Subject:From:Date:From;
	b=j7mR6FpmPmNp3x2Nq2qN+pNDVmhyRegtN7KMmU9ngpvKKB2inKnZg4GZbubOOHfMv
	 28O1nOcVyp0XBODVsxDQFOgj4zw8znZMEw7wYZTuM8mvDEd5rXtLVEEHrkLr5cufkP
	 YxrzWOWzo/ZpwtBgr/uPeGdlJEuUcnJHdpH578oWS1skZLbJZ3eExrrNj4d53W3YWr
	 Uk8TyiRUudVZOeHmaZ3H6eNRFfsACJL7PmQpLjs2D2YR2D820nDIEXOlLs4W36Vqff
	 CMne8dEn+vGRpldXLG4dGg1nynXlJ1immvdPS9CBSy6gph/OXUFGI6vI/XUsZNjfNT
	 i+HH74MZ9hTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6186DC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401508739.22821.2768705671949104129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1ac29748a80e783d2c7761996490e13297e9db3dd466e304c053b83453fdca
Date: Wed, 18 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674015087
