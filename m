Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB03A2F2C
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDB6C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663231853;
	bh=lfVs7p6MGWK/LG7x+Ed5pMEWMfV7EGVU1BXtUWAuG50=;
	h=To:Subject:From:Date:From;
	b=UppGNcB6VzMqOYN9mI+3+n5dJECzUB0yaA/uA5KbP94GVl9z9FWGUrkIlBX2Eder7
	 vLWeb1d2p6xDbjkkb4YWxgoLm8DW0TIPZIjnNV0bDh/TIZ+2DuZtclMu66gvm/Nvel
	 5BMjiH8wsP1vyVYksaRk8m32dmjN+1sSJv2V3faxQGzRE79/ZOrUhVstFNUZU1a7Bi
	 fxfdg+BDga7GA6ypPH6cbNicl94UWNBybRCjI9kML8x4C9YnNWONdTXHOHmYETUS2r
	 lSTIp0CgYBmP9FKw9pmHciSn78Tqy/W3TeH0SiBlpldaLWgWE3HozTTCDcl9iYXPjb
	 iSunw4inyq9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526F7ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323185333.20677.2495559949855431809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb17a24fb6db3db772da5dce45f509be9f6f81a3b87c4ba7c436518d2d22652
Date: Thu, 15 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663231853
