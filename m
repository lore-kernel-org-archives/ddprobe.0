Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88232F57
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C17EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661434252;
	bh=om6TDzWSzMPscgYdHYIelQJpvYR/8P5zVvrpI9B17AI=;
	h=To:Subject:From:Date:From;
	b=A1f38GnrKmHwNcLI8OT7DVXfLfwzXPDhnc8HNnofITinEDTrIYmEviboLRGJ5+40d
	 rdesnRgnjU5CVsv8wLM305wBNxpJWlXPusSspkE4WY7ou2zoL04Pjb7O4w5vbiyDVq
	 PDEbRxdSmZaKoanFmJRCvkjmOqq/dLpjiZ0HJ5XsrTMv0R8lUSxQpiJ/XXgx3mLzej
	 XOwRQmcry3CFZBZ9nOU3LjL1j304fVyZiOUK+xyFa46t4Gc/PKospT53RfATpVSNdY
	 wnKr+EfvStkYmzVew9E1hQO2q9NdwsheU0cyA/5iW6xqNDh/6M562o1TqeysVfyUow
	 +SQBAnjIXiRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AD0C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143425233.2131.9697514465212432912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b69362d4f484cfe23f23bcf68fb20e01920b164b4ccc2e8d4c9a2a5a3a92c15
Date: Thu, 25 Aug 2022 13:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661434252
