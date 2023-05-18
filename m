Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8EB3D38F
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 22:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 22:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684448885;
	bh=JgGp497VT8kFg/LyEu6h5FNa+q7z1j0oEeepVtBtKMs=;
	h=To:Subject:From:Date:From;
	b=FdvQFjM8hQsgkk77+M7fo+6t5i6HeG/PG020BhHEPR7c2glbwR/91vjm835fQwOXo
	 Jd2PjzeI/C4v9kyiHaFhmXoGMFrXp6VbuAOWdqpMUd4QNkdoQtsIBdmbreCukxBVaL
	 bqUD0g9smr9nAMj/h9wKYRHitfpkpN2DYJHlsSbVruzFTwaozLhuqH/pJtSQSnt59X
	 ybwrpaba3vOPKM6M9cQkBks5p0ygtCZkxq/HV58uvHmynppA/ygUhB7gZ3XOl7+BUk
	 dEstH2oEj152mAH8m3AZdcbvxZDJ1XPdLQgB4/ci/jDLqRy6ALUbr0H7x1kmlbXNVi
	 je57TC3lwDSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B634CC7EE29
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 22:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168444888573.2272.12196904541975958576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f2b4860bcc248510cd1e985e9f69cb04a73466d2e07cbb02d6d228499bbe6d
Date: Thu, 18 May 2023 22:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684448885
