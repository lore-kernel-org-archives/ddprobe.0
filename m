Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED736659
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CFEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673593287;
	bh=9rOWiMvV9gMmgeRbHS2DmK1+QWv209tyb2UrQxIZ5lM=;
	h=To:Subject:From:Date:From;
	b=Gpb8kERyRmJ/YebnbLPkMsW5Gq8+IycEnWEOfCx3daqPkkycQeQKxn2dfzsQCKGQ5
	 OIHVsFu/a9rVTFRkyB6GLpXK7Xq5kNWUrFL1SZmZ2VoIh7r6DX/8gP7s3a07pk+ZOA
	 YAsGV+TLtYoMb0xk8mppK1PTUu/ajHS/X5HjnYrA2ny6h+aEXc7z6O95VQvt6lHZ/7
	 B+Nv4mfsb1CrXRLGy1KWHS4MYw01B+GYnkm0qH+uzLcbfGSsl4fRE+ivItlntTmRvt
	 LLj3gFU8mnqFVXlxEEds/kJLUpq95hQdjJO5a5GIDqkf6bGvABWeIFQtziT6oCrOeK
	 wBH7lps0yNF6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69041C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359328741.22554.11176114446114494859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc54f47bd00e1aa74b6867926031942486b575bf70fd10022e856aae1571fe8
Date: Fri, 13 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673593287
