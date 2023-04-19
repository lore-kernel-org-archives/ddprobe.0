Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A451C04
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 05:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E241EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 05:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681880645;
	bh=/eAPGP1kpXWD7ywKWydidLLyqPqXJH9fKhTtGoeQN3I=;
	h=To:Subject:From:Date:From;
	b=RGl6/MXHrRLic0/wDioMnm1Z3jXEq5UV57Ca+gNQCIxXIAucHt1Q7ypUtP4PwqaOe
	 C2gu+B3Ob0gg6itsBieTDyHseJv3SpFJhvpXkOL1SN8sczKzZyhDUZw+ZRr1puL2Mf
	 f7EGOmU8sjXI2qZtPqSCzQcJilAmvYzB0zWnSNrODDgOFp3My1y47Nihko+gUzaI8t
	 OoMBU35hpuwZYCOWRlQWISKfIhVnJihTCafFMrPVoO3LrYH9N0LMBbttI9/GOBnLil
	 mw/hGq97xyJSyV38svGKxfGkgyHa/jNTHRw0fFPBNfc9yHiV8b4vOj4XJkL1qcqQgV
	 Am/j5U28F49zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C257BC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 05:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168188064578.3025.2637287528288933149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4048b3a9afeabcfb80fa8a3a552da0e78fca6b72009c54e398138e8ef73d2401
Date: Wed, 19 Apr 2023 05:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681880645
