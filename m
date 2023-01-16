Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E0BA2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86AD3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673830887;
	bh=eqq8CZZY99pm1IF6CkOigoPAbtTGqc0YpqoLfFFbsZ8=;
	h=To:Subject:From:Date:From;
	b=d562GfFHH4PtwQr7AdXgBTRENF/IW6qOnvtvl85MPNI+WpxZQxcq29fCBwsRYxVwZ
	 sIDSwZGFua4lJEuGTxx5lV0P2H6nsfDzmUDs5zGtkcu5pOwMa73PeTRJWrcqUQ/Za3
	 b+VG0C+ckZ1w6agwIGlQurCH9Cal9IzyPHQzyhfCRqfX8ZBT6RI+z+sHgYLKPMB9rp
	 Es/8wjk5uRVzVMqy7ibx9mScNcdyyciFqktmXzfgxOK6b2mq2kC5mVXpYaOzS7Vk19
	 l11ZG01Jgi/wiDETh9Jw0L80dARXCRya1m1mCPcjee4r2pe7GqkXYFXW8HObIMlpIr
	 NAnFxk8pE7vxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C30C3DA78
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383088739.22315.3970287849869205296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db94c66a6784531487fc76b5ff5dfbc3a6e7688322a4d78b46e3825d80d30b9a
Date: Mon, 16 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673830887
