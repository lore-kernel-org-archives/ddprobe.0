Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522437E
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE481C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680395105;
	bh=hOG0PpZMw891jbrbqpC9utRtAmhb9Icg7i0qMolslUI=;
	h=To:Subject:From:Date:From;
	b=PMKBjdcYLzDRumTQebq3m8joxoWPwe1QuAv9Xg5LiMnaBVJD85zbbvik1zwTRCpIa
	 YFHD7Kl6j00NAX0jtzSGhAYrs+/sw/sX25zBZk9Gy6aCz70y2sGz04TDPR16GAqqgL
	 CpXb7olELDHii0O+0AbEXGZ8wSPofMUnKqmmvCDgGncwT84w4SsTaCycicBzJ/SqP+
	 C+VQuJvryZ8TTSBQYTqqzDqS6Ygk17ikggmnzy+2Iem3NstwPe0WmAIzFUOVXz98QL
	 sQo/7uw6N9iegMUZNzRnqnYdlhGRQpXIhquct9RJS/5e33Rxlx45/q2t0jVulPqNwu
	 QDWlfbSeICw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19BBC6FD1D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168039510575.18802.14946419779181438711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03099796cd6d86af154aa66878fa7b69aa9b856094754ef457a440c7628dceac
Date: Sun, 02 Apr 2023 00:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680395105
