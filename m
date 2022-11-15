Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB5C1FC1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CB1C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668483654;
	bh=i5QWCnMgi5TVAEP7pUjzVWDKed51yAFmCchDl/XraVw=;
	h=To:Subject:From:Date:From;
	b=TZgggaOnTGdGLoWBROdPD371VDebBKNRwhhFmubnY/Eq17hxZdzsuhMsDVJEQHvKc
	 rjjHzchpRZPF6rlVttpneJ2xQUDxzurnoh3NX8rrn6lZfkiTUXuK7NOOvWUz0gKiFS
	 arp8OwA35Z2UkzkNpfxJbqlyH4anM4agJ5trSLWVYAYjhWJp2m+2X7gy4mDpsrOLxF
	 NWDrqT9eqpM3M+1bXLQVcsH7AOX3IVSfypWFA6D0EzDkwsoV3EYiOWoVxKyvQRFVof
	 LNGHXpEGbUPHR3NjWjuNZwIf89sdO1OGbcuniyD/pAfmQvysO384eIa6nsmY9Fflbb
	 73RQ+BrBHEFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519DFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848365432.16026.5706821478458099930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631e23aa70ff48fe0066144012b17af20861cbc82190801e81456c07374916af
Date: Tue, 15 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668483654
