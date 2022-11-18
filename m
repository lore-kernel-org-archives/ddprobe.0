Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC77520FD
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763C4C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668774654;
	bh=AHSC2KzlsXeuHlsN8rxjVSVVB65AanmCg93JjWO/15Y=;
	h=To:Subject:From:Date:From;
	b=jpkd3Qh4GDri21vv8GNw1W38EV+GDdXM7yIMISBVl0Lz7LrIQ7Ug+k9xP8YZjcWjD
	 XMAUjdRpT0Vq3yE+SSXPhTR+2EmWQvUNIpYd6UYTN8j3k+JKvaqQbab6Xb2ZQvnZAU
	 bgagvsymVrD2TBXs2H+qoynRfUd3xFnCnPuWA+50wRGDpkyGEZUEBpSFYxx5JjDUVL
	 OJgzCZrRQ/TOR3G5Cp1a4ZDR3QlpA/0HImyG0CmcsK607il6k1FW8Z34KyZTeZ+Ab1
	 aFr3rxV48KqptD7RygS1jx/9StfeLxMJ22AntuQJc0rRavamg4jxdnVddFhZO11vaS
	 gkPvY+dGmrLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F435C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877465438.19985.3158124319850709218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99545b7296486a84b8f7c6e182d4b49db29d442b3c065945d879def9b68da47
Date: Fri, 18 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668774654
