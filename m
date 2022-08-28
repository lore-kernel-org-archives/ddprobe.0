Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD9317E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69ACBC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661674852;
	bh=awhrLb28lMvMlVCbs6yKqvqR+s0joPw+2lmIcpmSbuE=;
	h=To:Subject:From:Date:From;
	b=qrXviiunv0e+E+UgH0FuTZOtR5nXw9CF/d15mjHmyjxPCdDNiqrhgXOZ/5+iRgXm3
	 20qGypJyzKW+yDlbfEPU7Hru9jWmf/QdUUQ4rQwRLb0kYDWMFybVw8O40X1lLkNtY+
	 RsqGQjyEM6UHdMLHiLbFBOxiCMetfCXgPmViir0ETbjctWNOLKpc13Cqp0UjdjRMCP
	 4lZypPyFvg5jpYSDi6PXs/BTVmp6SC8Dnb7eVLPPUTTwKbmpU9qHg2B0H/Pi/pQAMZ
	 KcVBxfmCuLXZser97Crs4clGJIe9G6rmdtOe7dLE6oTvAtcekZK0ChCvqBfJn5rbIV
	 N5bgDl+VblLUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DD6ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167485231.31917.17652759550268728772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62489705f0b8a5ff53a37c523f8231c698ec3fb4c9f34a7e175b6292a5f874d
Date: Sun, 28 Aug 2022 08:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661674852
