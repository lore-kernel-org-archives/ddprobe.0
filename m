Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687967E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 01:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYOj8mHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA3EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697246828;
	bh=7KDIxppW8XLRwEB0wAyret5YB7Bmzf4U/tq40icl/bk=;
	h=To:Subject:From:Date:From;
	b=QYOj8mHZGyzGM6N5BCkTA3QhCz4kqKmJptjWBpxHO/mjkuvbhZShqCTfvwirOef2w
	 m0QfLLLwdWySVSLs2IgT/Aucrw/90B8tXNVwsiTX8k62BaCYjeva7kWX5woYPFarZ5
	 KW7vBjogxZ11orXZ3ohMp3+GfiSI9RcKmV30jT9ZUzV5jEz42oDRrf2gXTmp9hbK3b
	 YKs2w7KANB4SKopwqPA44PM/ZiqrLEU6kJ41QXhoZxwAI590Zui48pL3E86alu3Ndo
	 E7i55PWc2T7jnrJaplLUzcgNFFGseLwJBkvg9W/l/Wrfex9DVnBKFA1I1QCyxl84NG
	 qq9ijcJIfcbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFFCDB47E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169724682870.12195.4962438399056490520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1679f031dccf5fb9f86e801ce498598332d2921af417658be501d53b16bf064
Date: Sat, 14 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697246828
