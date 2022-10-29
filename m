Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C616923C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75463C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667035854;
	bh=nN05E9rnuB4WAdlpHk97CHDGmkVFr2SRjj5TMZm+PiQ=;
	h=To:Subject:From:Date:From;
	b=CS/p4UMegXbxZ5GMV5noEkwKmr9Eaz5Qz6vusfWRsfMKui8oUZw3Pv71dHCiom+f2
	 tnnTPXHsToYppe9JVHSfYnFMAYA6UYN0C1GJI17Hjb1UGkg3j4OsAwHXuNiN0hYAAA
	 8P3ECjesAp7TSY7pLEJJAwejMTFg6hV7yEw3Amw3BOJa4Kyud3lXQu1ARNTQp0P+n5
	 Nori6gy9dOB5hWI82M7l7FJJd0x0Ii1Z5/F09sdluLAqhJvg0jp2SnxT8yHEqTqHg+
	 MODN9AxziAOZ5t1PFny6YlLL3E2L5syYineDMVJllJx7WRWjlJJ5ewXJL8YNtimuWF
	 f+fAsDRitLNog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587EDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703585434.6588.3122170654266421757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa8e3e4087a604d55150315d522eb028d73b27d465094b32fb1bce596cdb4c3
Date: Sat, 29 Oct 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667035854
