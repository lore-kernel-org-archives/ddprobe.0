Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FA97498
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 18:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C832FC433C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 18:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687111808;
	bh=dSIuy7GSk1Sq3Lr29Ozj1nSj2CVZqn/EtWYioZT1GiA=;
	h=To:Subject:From:Date:From;
	b=QxGDTc0OMYnI5lY06iBjJmpDwVoBwT/UYkyxqQyJP+JN+vbxf+D2D5N9EgCu6QY35
	 shUEcGYcjJVK7h7MslDttl4kA+u9UWCLra8eI7qUhZggEVBK4SVq7iL3msrCSHcg6h
	 uspt8fwRBWcRgK/PFcYILwzXkMyUSJFst2mZhtqWhfRD8VGvhHx1VRK5SXP9QyxIlV
	 4e3n/mTK6HfnBfYJ7NuuTzQYfvcc6gqErLDdPtLqmEQ+RfnWGRGbDDmCMGI6YAZNCr
	 ykloGy+3VRB6pY59W2vyo80AYXW1RSwt1BUDaFfpdu2LPW7LZDBRAmKKzWzh3ZEHAB
	 I7MKLY2v558oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE5EEB64D8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 18:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168711180870.28882.2379024266617874893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb9640fbd0df7966d5fffb0398a5c5ab34d52fbebec0d67f8c8bcf8030c0d2c
Date: Sun, 18 Jun 2023 18:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687111808
