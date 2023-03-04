Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BDE23BC
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD569C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677931625;
	bh=HoRdeOjvHdiNzpiS2W6iITI+dz0wbGBnlFy0qP/2mq4=;
	h=To:Subject:From:Date:From;
	b=CusAI74h0LVgqGg1zoVLwKLC27O4cMcwzgmnxhrlHtgdUgN8PZBkBtF/k4dLu8hAR
	 nOZMuQMwXHpbvoPQS7cbg7yCeZaFLTILf2AkBMqqzHUtnOcF0mQ8yEfvmIjMEx3PEr
	 hpk3lZF3aQFulfH72aik1qbafQ+Q2LeBTEfRZa3V8lICoqz30ai+FLM4etBT7hfcre
	 TMhrofWTaE7rkjLxlvwmLLa7An15SQViwE+R36jMM2toglTZEoFIeAwL9yZyvRImr/
	 SSFrh2lNhfPWxksw29roTqz/nZ0WugcwlYlz5nJ8vEIXbHNiiV67UleSnoWaWYsp2z
	 zQbwSK2HHgyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF1AC64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793162574.20120.12117557762583668026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100fc71c3f4a8f2fc25095f6f08812e9932afc6f28ed4ab49af64681e250e7a5
Date: Sat, 04 Mar 2023 12:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677931625
