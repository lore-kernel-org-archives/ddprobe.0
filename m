Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0482F37
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF4EC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667845854;
	bh=Q36mnhLa/kGHal4zdfUM/bmTO37J6j1QW2GJtl8WWns=;
	h=To:Subject:From:Date:From;
	b=EnCZvL3QZsvphlobsIt2tcFDerJ6pKD1z8EIFPYc0HFN0GuRntmlEqpIqMvraGrl5
	 EEA1SxEwBP/QhhjMGSk89u7ItH3lNc0Kav94UPZNMbOziYPMao4PvqHUwZ94J9gCdY
	 sZudrjJsVYhlh4EI+c8wPVpBpwBXsafHqSDfzRXeNI1vBRChA+Y08BmCVonWliIEsH
	 55TGM/jRolVVuc4GI9Nz35sAmchPAhMquecJOwcQAt6cqOhbbZSX0qNB8ZCLJID4Jl
	 wkL3azH2JpBHWbjw5UUZ0WSn2lNHGnqziF3N9U8wNt//0HMuo/RzJwC4yyqkCjN8jp
	 sxjr4DoU/F7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FF6C43219
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784585433.13617.15802273915290853832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b2710898b961a557cb03c0085f327ffdb325ef5c60577b207b903a9e8f85e9
Date: Mon, 07 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667845854
