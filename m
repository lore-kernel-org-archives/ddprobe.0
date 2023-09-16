Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522601079A
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 23:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC460C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 23:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694906108;
	bh=zKPIsEOOspPuMtB7gdYiT5aI6Rsinibu45z6SBg+Tyo=;
	h=To:Subject:From:Date:From;
	b=U1rUrlPZSJhzYWGBKLr3wcO5vhdkFDWjmCdHYVriMGBsBvt8U4ghn4Of/oWbFAexn
	 3mr5NFgQ81buxsGRcML/u0exA+hrwOJ4HQVxJQ4sS/R1OJD7VWX862CvC/D1p+FCZ3
	 EgrxHFbfud7DgqrWcDr1vmgOuQKnVW+Kxz2KXS75Jf0VQnB095Aa0/3HPo/wyyU5/d
	 SEWfOVwfJESELNl45p+1rIdKZ0ka+u3eyhjeT0pbcM6LKc6QJ7ahHW/hw5JdaUskFM
	 5QVamyps5L3eblii8aJacB4/dDbILHkN31JzlW3Pg34kKm92fT4KPcmaZhXC32lFLF
	 pr5VNJUEaflmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7B8C2BA1B
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 23:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169490610870.27958.6175232150437326042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bd0625ed9d3ccb67b1c592da0c0f60b30d8293a32222dc7580dc1ddc67b54f
Date: Sat, 16 Sep 2023 23:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694906108
