Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A46AAE
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 22:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC32C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679868725;
	bh=8vUWY8NGBTF19f1QM93yBRdFQ1KRixoulg5OT6QsI6s=;
	h=To:Subject:From:Date:From;
	b=s3RGkIE/h/Q0INpJPypOvqFGxUX8Ax9FUVxvazMwGAZ9jQ4NQMtzOo0o8RqiOXdeD
	 0oN0xywhQY4lXHoUxpAk9TcDp3FiTcJYVBREEztMVljctiYfxxpoWTt3FFjoa6FFAP
	 0AVSUzT3OP6QVpJ6H1F02Ix1Cdn8zxFtC74opEOo9pwT77WXoy7mqS1cyKXmm2mfnl
	 9NcvHdqrW52iJUqKezMEbQwGhJ82RsOzw9IpFaIu7TWhb8JtdLlEkJgqYS3evAwup9
	 JLKN2/6cPlbdepM001zI4AZvTKAtymRjdXa50wyAi11d9O7arjU7U9b01Gb0azzVO2
	 ZAv+jHAPjDhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3406C7619A
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167986872579.17174.4407725657169766239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fa7fecdfd8913a2078d097d8c29c0d34e7a08fb1f1930558325e4d4987ff00
Date: Sun, 26 Mar 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679868725
