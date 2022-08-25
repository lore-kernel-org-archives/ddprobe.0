Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47D64C87
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 23:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F545C433B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 23:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661471452;
	bh=79wr5FDLnmMiT86NyRVt95hIn+xu/2B8gBZ666/z5gk=;
	h=To:Subject:From:Date:From;
	b=avDrJd13zqeBn0ygRKxoE+guNPEoRFFE2ZhyXdcSUeAJ8wr+pvedExCBczU0DRTGh
	 1NLtcvSi7RthcikW3LjUghTcztaYqb1714eB2rG7Nw3yBNVmW6jAPpR8+uk+SSmosX
	 8mTWvEkdDQN865H0lGFwPOEqPhr/47W/19G5W86yV9ZqysgH9la2LvdEI4LdiqBZsH
	 ATc00QPCWTUzCHpqPWQ5a+1w+cdVL1eLPci1537ejEC7uVZCjsSRCUmIPSZi0Fz/Zd
	 3r9+/h/47JCoYJEW+e7W8lCXqAbHdt6LgoX7GaYEaW1RPuv1L6mEEywtmIFnZ4HwY+
	 PjI6GSJ+PbLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64020ECAAA2
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 23:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147145240.11204.8236413205721801755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22a9a9ca2764c44263f72f065992d3a798899aa48ded483af1b1971b0941bb1
Date: Thu, 25 Aug 2022 23:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661471452
