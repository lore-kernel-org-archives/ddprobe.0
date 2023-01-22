Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A0E138B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFCDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674427325;
	bh=Ukn1mlsUKhG198BzSw1dVHlZ3n4SuDfeumq4Sfrhk8U=;
	h=To:Subject:From:Date:From;
	b=Hz/u8lw7eD2XVR5gKwxRIvZ7GHmuSy0Ed4RiyAEKu1sHqbtjk1YsoadX+d9NKNK7q
	 ah+EJpQRa4hGRvfWOmyOPl9BRviTomhL5Jx8QNPHn5pYdlPNfMbHN+6NIhtaCgHpic
	 wi9dQNUamWeNTKp8o5PXM/O/Sfao96pyE9srPtjDRbmiPKQpt0jRPUhhYdNQPwmpZT
	 5Cv2SebVP/mG1LeMs1YdVWOJvjm3/kWIaQzRqB+3SHFXGF5Blj2VivpezkFDkK1Oyn
	 auiazeMxeIHpXDMsx3VEDkCW/VAvTsyxes0M6hgmyC+GJzKj/YjTb/Jv/RnerycED6
	 ZJsEAdat3T9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF15C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167442732575.24331.11930371211444329697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa626d67e46f0baeeaead92056a34c72021948835257d48ab1017006be26bc38
Date: Sun, 22 Jan 2023 22:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674427325
