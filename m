Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F5D10F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4D3C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669887054;
	bh=vbFG8pR6Xnrf4dIT7KB3mZ4kJoMrn+5TQDEGKtoUpuY=;
	h=To:Subject:From:Date:From;
	b=k/tGA4QJ+mm7qMhQLqhoKN0820Yiay1AR+2SCvcMd773k7aRGzSevLzKQ4AkXrfvI
	 KspFjxPngVIT3QXUFx0zIzqg20EvZD99UMLH8fwEQy59PXTWZ4/wLWZFOCGe0v0GEr
	 Loz2nESiGiCxvcsA+WervEXJ/ZEam4mzMQkXVc66xFLR8q+SZkVHXn5b2UbbKQsYiB
	 dWGe0IM/DqN8AGsCAjibMpt8JGpbx3o7jJExxb1cbNEh6QDX6YYHJHy/utxlJw+Oct
	 7lAMUOXo8yqIfaFpFRSO+yBgvoSi/ssPIuXzAvUB4EQsy60ghnIKWq7gRoMCLJEGM8
	 tZMVmQ/Vnv1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C35C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988705432.7526.3580284975828817916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0e3cf7780320fc737e440187cd23dc7aebd7caa560f880265f7038240e854b
Date: Thu, 01 Dec 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669887054
