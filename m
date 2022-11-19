Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3930630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73974C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668843654;
	bh=rxfcIqTRHS+1YVjPg8OvWcXI7ce4M+K7DwAxx/VBFI0=;
	h=To:Subject:From:Date:From;
	b=vDdog8uGtVfFuNK6VzECgzeunWOO11IRmyPBzxp54LXmV7K8Rcs6uMVQKDcXpNaGV
	 Lz8NG46nCP9070fP1ZvNm1bbEIQ1sPpkt7r1tQj2bPFLwTX4L16bESnzFEmlCfOyYh
	 Gd1OXRNS6P67f16/O+35KD9eEeCD6iK5uJbYMFmIdqg9fyIaLY+dKuZESo8jCo8qje
	 UNj79e074ocwBwpMvlUBxAs062RjxVBaALC2YbU6IV8sZcFfvdeYR/6AmJRisUzekf
	 5kBYQBYrv199VPj1RuFFcg6/rHrPQieshI4VtCw4wuJjxL5TvddqGFPBbxiL9D6fLm
	 F9OVQLVKn1ltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561E9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884365434.18687.9965990936742557530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a443c22018658ea409ddb257fb93195dffc7a159d48e8c849550b78c2638a280
Date: Sat, 19 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668843654
