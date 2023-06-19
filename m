Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C36ED53B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ECCC433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687200128;
	bh=Gia5cy97yM0yRFretPQfWfxEhE55VSbfcOavrgTfqFo=;
	h=To:Subject:From:Date:From;
	b=ZA8GX0zVGLl4ec2WxtjmfCoYfCebJVcP4AuCDvSUeNy+1S/jI8yM7Muz6t4mCylGg
	 f+eYUJh295VdFw8c4M9h31b6qtjXk3vw9caHMp0SeVG11tZUXUt3pj+ARoAKSWA0hM
	 kTKcxz2+l1bhuMknoBriVLA2h+aaYkzBmCPTL86Ho87XSySSQKA9xdTeVPXr+LEiH/
	 tBsIGxm9/x08q5anBH5E0q2INO4M1aAgNNJaml63B9nosY3imD5TjDz3h6ZHQ4SvG8
	 xDkih2AIRL2CYPUTyYuceJz3aBjYiSNZ6PRHKJWsbvRPPG75zrNCqHpSFTEA9s2/xm
	 a2Va9bmrI1jAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB7EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168720012870.2439.4033195160721689430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c352b6673f0cfc0e54d8ab10eeb27464b5d7258bdbd42ce55307725eda1afab9
Date: Mon, 19 Jun 2023 18:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687200128
