Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F11423A4
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB568C433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682754906;
	bh=A0l9Pd0HU+n/5lBiuhnEAPEv4XnV+mrxCGYsPMrgB1w=;
	h=To:Subject:From:Date:From;
	b=mQtuCVkDFZTdaKDGF4vCZFEB76QKFeAMHSJ2NiP54gT0PTBMmrKkmay22KLY5ERYd
	 jm8jSCdFum7eynyEzSiwrPZv2jsPv+3SxUfqpGGWnb55h7nAFyNHJXMNWz9kcixFDu
	 g5JJbYoTLY2IIYOImcOJwVcTQs5hEC8e3WXIXf0FE21wFitpp1masRjTUpEyHuF1hV
	 xUhnE9nHya0LxwzQG8J6PpezybkZA2yasRyKCZEHUWuJqf7oLlI498/VCEzELcvm5i
	 Sp4msoWInn6l//Fd/o7MSF1yT4t5pWeCD/Fb4pG4aqz12c4DWwfnS6aLFfQVgaiQ8G
	 9doUFwlbI88xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA78CC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168275490579.2266.14367539298153756472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbbb46a88f3c7e0ffafaaf1440b5ac0c0292a8b38b4c8ff0c2b6f4924940dcf
Date: Sat, 29 Apr 2023 07:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682754905
