Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A5A79F7
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF9BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675114985;
	bh=gAKDOZCasITeaYGxtLWbvbL/6LLLd2Vo5fgWvzGAL/o=;
	h=To:Subject:From:Date:From;
	b=DVA4UDRfi5A1i7uE/xxLdErgK41T64s/+/3OEPNlKEBEvg/FrDlnyHtfHpWUrzswq
	 B7w2+LgJfbjCaDhLRJP/1F9oyu4xeGsQay9E6TTHbkqy2ZWHFS9TwGEinXLvCkx+Et
	 0l3NKqa3XULptNaTjEa6ej5rvZ2TseR6Tg2OG6N++OC9EBS9hYMSLfe3oTxiAa081u
	 D03ANKxwk3Lrc5HL5l5gxFiN6cP6Kyk+ePjZIp03IQC8n0yMq0wYjUULyc4jHzASlv
	 QIkdnQyVXKMsoD/yyPe9LaJ2ULgtNC9c9FgO/oQ47t5P8wE0E88GFZLTvLM061R8GM
	 f8TyRiVPp822g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00D2C636CD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167511498577.31383.13417325283504087163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b8d0d3184c86a4e5fcf3fc7d1fff52c893096a9c91b00e0328bbd342504b22
Date: Mon, 30 Jan 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675114985
