Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1E5670
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BC2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684510085;
	bh=1GrxBUL4/dybKI17v6rvKGsE+BuhbUtuwypdkxVC0qk=;
	h=To:Subject:From:Date:From;
	b=KcpyWnSt0EIJMTlJPTnfsC+Ua6Yl+YZ69g2B0qzBqeg5M8QEaqQ6jR2AKBhmkoiZu
	 hWwg6nGezS+4waLwcgY7PsG/EbP8+VCHq2OTKzsaIX/CiRvTYgoK/MavoAHpjeN5cv
	 8aZGJjXm1THlvyUvJIdvCWJxBQ4oq/2zbCZyJG/L6gj+cHtScytbyoYt/Y+5nXz3j/
	 66Th4Ph4ry39tmnuW4wqrS06/KtdwMZChoi4adxlytDY85RMXiplVGZJcTGxlt2BD7
	 RlVO05vU9OPlbOcmRtOqwkauDtrp9OEYAQ+2Vmew6bJPqKMFY71voF9bj4wCUgQP+T
	 T7WKX0usi4KZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCECEC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451008576.26075.15177538986402381583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b260023557df9331cd475795c2f5d92ada87d6043325da6d8998e3c42807e33
Date: Fri, 19 May 2023 15:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684510085
