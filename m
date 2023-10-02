Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EB517C3
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 06:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07F8C433C9
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 06:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696229768;
	bh=pbVOHIy4ffXoXPmac7YODi+NZunkIVdc9CfHra32MLM=;
	h=To:Subject:From:Date:From;
	b=lSlI0tgHN00kb5RU29hkC+yRt1oXNkL6hS0wxSsWNuuzs5LOPf1vfL5oOZz+S4ve4
	 jXi7LIjuDKYod2EKbHUH/PzPjkrq2zeGf8oWTAxQeILNZ3+71AOq/K5SY02GuvhUZs
	 KgGTbMgIe859yzinaR1sZuL8cXheoEkjHR9AFKS12DwAEf1/Tu3UuJplsZ4y0a3dcV
	 QnKPpSARoLAuAEEmXZZZO730DgYi3eF5fPiYFTGn8Cixg56xiDcL0836zL71nRiQcX
	 mM4kaHlmjurJ2XSHBcU3807ih3p3UZG5xcg8Ilw9oe7d1RdXxVDaXXk+pc15ajyWkI
	 ogg8QnbjqO0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B059AE784A4
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 06:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169622976871.5990.12808590068790409464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4a8edad4a57c664108636ad043dc39a21f95d47fc88a34606a465368552c0c
Date: Mon, 02 Oct 2023 06:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696229768
