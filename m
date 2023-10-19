Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE1A225DA
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 17:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCG06EuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01192C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 17:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697736493;
	bh=KSjOqyUCTLQsAYy88J7tzatGZfU4f6wiWClc5o+CpUI=;
	h=To:Subject:From:Date:From;
	b=GCG06EuNxfU50JLGEErAPxF7HzF3u+/ITaHdBHTTo45pjJ0r2KFZZ+6imRoIic5sQ
	 rbHu/pybWQd7rtqykWP7gEpzy3X//FgJWSJ/Iqy+JaYkd7v0R/ENS7fHV4TvnVZAp+
	 row2xCRfT1flT/DVpb2XSgXH6EvA0H3TE4CvjWzmvxNoU9ZJpox/R5jHAi+gOaigTx
	 WiWv4qws6c2My5uSAU6txQET3iPSAygn/DrZjZjtBJ6Q8jmtBnThb8af8DLvjFEAv9
	 /cglhy8W65cMxRyRudXSqms6KC5tS4bMkpALQyt1eXpfbdocI6m3230c7UmWes63dP
	 cqihul9EgffCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6013CDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 17:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169773649286.4510.10039321747007400615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4d6acaed6fbb4307a2707d90f11e78ecdeaf4474f3018e7087694ba68cea95
Date: Thu, 19 Oct 2023 17:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697736492
