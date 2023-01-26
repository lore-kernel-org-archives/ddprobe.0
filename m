Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406AA1112
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 06:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08D3C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 06:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674714785;
	bh=8vvfGkOZZsJ6QiEqvH89fTTS9bum3CqhUQ/65j0UOcU=;
	h=To:Subject:From:Date:From;
	b=kAp6lKxxZkEU0fCtdKaYuljdD0HcaZbYWs0nTdL3k9lyPT1sFya8fcu9o8PJY4h00
	 NwzKsA5yEEw90s82d3UsLFWOb4f5BNYa1XqBgxu5le3/R5a0VkSOK5LeuvmpUtgaYo
	 +5SIyApvZ6BxF7czEsV+yQChekE/JTnIZeAWYeIYQkjvEKQhyxZXgsnMCSc9rxS8mY
	 YY0DPt21EY2ENEB0Xq/gmwGZMjxQvo/u+aWgMzTfpYP95M3kbRBTrP7/1EegGTpaSf
	 u2GG6BpkQn+qy1bMyy5fP+RL/TmIK6kpGL9brg4QVD1mhudaaPs+49TG2osvlziPk6
	 4vuKBYzC1lNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D64C54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 06:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167471478575.32515.11234126101151701093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372dc6fdf52089ab7abfff2fe8f525ff9b386b3d371864d7d97c21a190d3e129
Date: Thu, 26 Jan 2023 06:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674714785
