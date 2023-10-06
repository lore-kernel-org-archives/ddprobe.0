Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E064629
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgaQvh2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A09C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696553228;
	bh=eijDnfvK4nCnIsyULxkmBSv9mS0gzdhQGbnl2aVLmDk=;
	h=To:Subject:From:Date:From;
	b=JgaQvh2DrvsnAVEuulMSYYrSJARcpEjVglLzb0uoqjpcLqcWrR2r+K2f5NadAaHIf
	 J4/MqGi6xD7QwhsB6fWnfL1Cv9MXz3qq3zylCwPbdLqA+6eGvqtrDraMp23drQUgOO
	 qgamLoYnnTln+eZYbR9TUe5RInZFRZRXJkRED/5Q8v+CGPyYJaSzmutyg2xB/ei2pk
	 7ARRURHXsBmRc9xO5YorTePDWpHWZLf5vhZtTSUVR6krX984Yb7MgsURE7CCF6rqjG
	 zaqQB4lAnv4Y11VObJrPvyFC/VTf5QGx6QanDfeUmME3fWeI2vJP1fF+srnA4Tw6AB
	 ntX6BPAlFgyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF5AE92FD0
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169655322875.11607.7372655305410559083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6006615490e7892ef64e399740fb0024858c4b209fff730fb69304f501948b62
Date: Fri, 06 Oct 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696553228
