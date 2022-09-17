Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98E5443A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AEBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663443653;
	bh=50qQqX2t0R+m7NK+w1PXHeoSw4lTh8JVq+APoTwH6Fs=;
	h=To:Subject:From:Date:From;
	b=iMTMlHMP0U3V8NdWf4g4wNoQ6E8/enYuBfxi4sIoxzphgEcC79OGDvaVKcf0V8ccT
	 ffyYph4Q8CjFtFat4GgdMo23puk1CSrjTuocHlNi+J32l/T4Dmt5CYp6w9+9IQOkWV
	 XPas7xpsTTGdrdOQXVKGU9k2CRG1TylMhEByErzRRdqrcQhNa3OhN/4wINVAiSGxWQ
	 q1OYPMZvUcaMC6QOrnPmtHcA4QC2iEdcviuedGpld4Bgv3T1BH18DeDTPjcJxmVRyq
	 3KctwmfH6T2mh/HwHDD6V849+QxNyJc0eEP/1A1gMMEJEpjRkXggHuHgVHSjAZYaus
	 Rqls8cxl8Oddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F623ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344365331.7359.3270683504160699330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f827655f9d653b84885038911025c6a5a73b26387dc45474fd7ab793b419231
Date: Sat, 17 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663443653
