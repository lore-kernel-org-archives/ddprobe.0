Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C77A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8864EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673116287;
	bh=7OqgWZQZ6xaDo17C0hXNTOTFddBfYDTYZZUHA9YwSg0=;
	h=To:Subject:From:Date:From;
	b=azB7oK7T8lZzLwAiteco7N9YQFqqrIs4lbnEiG0uJontqvYKDKpcfbz453y0xpGSi
	 66zOVMQ1SVL7xl79wxvGQpJeGiacJBXZRRH9aOY9+ADnfbsLFoG2Odm2uDooQDj9su
	 LrhaeKG1N5xEyrWUuI53h/nN+WAdD4zvs96+D9qwEEjZllvsT9rn1HOjGuBuAvKhJd
	 l1rjX5whKYLTVfahS8Zt1JfInkV/iBeWXmP2Lk9UR/F3Pc19c2oJaZxTRVBC4fsCh4
	 XZi/uwWOn1ts5pQL9HIUKlypTqwTPJXWw6qsJ/CZwzuPaCRu87bs6dE9bFDWbJ4lIN
	 R5l85YUuYjX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB19C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311628744.29080.12051265373960206246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6f86c246d58621fa8d2e1eaf029554d626f8efea0c2ed0b183be04d7a2a0ce
Date: Sat, 07 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673116287
