Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50594EA0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AA16C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673109088;
	bh=Cs2rzcahf7fBOint5BEcHq7t9KW8VdRRELx6NObExg0=;
	h=To:Subject:From:Date:From;
	b=kIv4A+ySLsR3KF8ZmKsmVjkVxhlgUtroHDqKGPxkCScVrFTYUZj/GpmFA4K0v9PmH
	 0NuurWA1jpo0W/AeTBhFykdnbebXhauxA2spXfXxLhMwDSS1lLxLPpHVP6okZrKDfW
	 +KDRPxt6mUpbjQ1HJTQJpXBAvf2/N5emw//id82v4AVueyN2KXgaTmoN0Q7bBhOKek
	 0MvDskl10hC1vO/QHFniZC0T1l36A/HuD20SFbqpNG18PN/modmlWZQI9JnbL6Zjti
	 ZOIwcdNK0VCcMjGAd/iHyV5gRyomqMrjuTV/WfhQ+sL1wikHA/I3kH1rCQPSCqg2WR
	 BW8G232+P7Vxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CCFC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310908784.6460.17253954785859175229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185a11f8eef0df9cf64b92f8c68f6cd4b228068e8ec2960ded25febbba859b6c
Date: Sat, 07 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673109087
