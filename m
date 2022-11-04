Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F51A20
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78043C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667565054;
	bh=AASHTkg64z/mPA794ITeohFqhsscd0AhvFtzuQkaXQw=;
	h=To:Subject:From:Date:From;
	b=JqQvXCN/CsMRQ9QtFEZ5xQcaG2gJug/kitbbqpR0FoNqv12yB1zYsWUt3ibvFsk1F
	 xo6Q0q4ayiBLBVY2Ns/6gJvJpElsfRRHaqjYPiBjPhsp48Fr0rPey9M7T88Y18cVT1
	 I/aqExKsyYUH72TuFBb0S//2DDW3kaFQkHls7JZ7uqsBQavXNqM49llVolJqBzqnjs
	 q9fk8TwSEKpeviPGhzLDt71yUeyJkCoWG6sPV1lwJdVpqZ32KtVWNGayi2oRhLXgms
	 zoXcbXwBI0nvd70huf/EE33nUOkr3sRyTj/6V3KeHcOhOZjPug45EV4Zwt+ZR7OQsQ
	 G6eCHmZ5EqjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E08AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756505437.25566.7946945837604318625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8b127ff248d87ab44ae0cce43edd82c2c8d0ad1fe36657c0c93b1bdf9564bc
Date: Fri, 04 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667565054
