Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D86B10E3
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E7DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676109845;
	bh=U6n4sTqOhQftCSyEVUpe5Ah+8S7nvnn4z6FtBgENDE0=;
	h=To:Subject:From:Date:From;
	b=u4fMH5zzZVFhQ6zmubOoYJDzcvUWSuG1r6mlaUkqaguuAzuP6elLngfu0Hty55E7P
	 Fy+nvzW7CpqBVPR2vFynkUZhpwu3dL4O73Uxq1e+xgjn548VLmogsfm81WdwVMY9Hg
	 pT/RsSg7VV2t2mO11yLAic7TH7uzZdAJzdt2IPW42NwJZZ1i6yLojf+BfAYc9G4B75
	 9Tswy/3hJYiyzcCpDX9NiMh9JRcd72U5D5cEn7eGVg8fe0exaXNnDa+hZtobFXgLIK
	 nMfyN4FTa17j/kXBqQ2Xoc/zdabr+1eE/qxPlTuPClYq9q1rcmWYLAWds4uFPMfOjm
	 b29wlHg6qpuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6393C636D7
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167610984580.32558.17365731834176443374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ccdd9f8852fd9c5031cce03eaeb86f40cb048b57b2257fb3f0baa51a1c3a6f
Date: Sat, 11 Feb 2023 10:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676109845
