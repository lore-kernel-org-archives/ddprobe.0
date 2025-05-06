Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0B721CC52
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746558594; cv=none; b=bQ3NzY7pl2Rn/1mzf5h5NNYeBBCfaluy3nLHOlemkGhUta6+F7Ww/XoHnOYmjkthWZoFdzWPF6HYmQfN5R1sOOwpxiENuaoC+zoJ/Qq3ohDsj0q9rDH2phaiY9lDHfYOe+s6Rb4oQy9bVzcmdYvTnwMYqcX7xwuIDQv9piew4ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746558594; c=relaxed/simple;
	bh=QLJcJ+/lYVDQ4IhWNbsjldU2zs2S6BH4fKFs86cs2Ho=;
	h=To:Subject:From:Message-Id:Date; b=lYvZhTFm5rhMCXc1eh3SXae56Q915BFk1PfolJQE8QsOgGrOgUCvVuqIbF1jQE5w/eZSnFek9CJ0lV8V2ir7zStwOtV8gTmWOTWQHlvkbu/AHC1s+5SGjk9qTWeqnftMM6bR1MsuF4HJLI0d+NC7cyYXVL2aKB4mwyCuMc/Ry0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB7YE5RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB7YE5RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCD3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746558593;
	bh=QLJcJ+/lYVDQ4IhWNbsjldU2zs2S6BH4fKFs86cs2Ho=;
	h=To:Subject:From:Date:From;
	b=HB7YE5RQdqgJ3RzcKwQrqZuL0yAXlTXqXncBZ4CsVx+7ukKbkK3uCImXosFJtD7eE
	 lo3B0gV2w3REqIrAVcq6/wU6t1vVgdIJmgnB6qLdDFcimxtDnWx/CRP5qgnvLE4wv9
	 61jlozRX+gFd+DKOknzHE3ae2bSxk23BDCjO8n5BQ6Tw3iKiYeslItM0OGJUZ3TQQQ
	 WKxYr6sgZJMtf84N4lifxZjTLZ7Ivhv+mjItjqzmuNnMfouN3iQao3TZHhmgBvg9f7
	 q1ATb2gvXn3lRtFwxmvXr03bmK50GQW0IZs7v6F+OtmVHSnWOR4zYzMDqQh8rCnVNw
	 vhgXCTaY+lGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E829C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655859357.9022.873538360210746588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4909b9ac2025014d4d37d3201b3dc745cc02e74c46a8a980137185bd86b408
Date: Tue, 06 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746558593
