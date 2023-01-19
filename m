Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F853C26
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CF7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674123087;
	bh=zVg/ifT3vkkqS/azxdra+nlNGEuX1u+n96mNeUDp+hI=;
	h=To:Subject:From:Date:From;
	b=J0j8OvoN9WuvkhQzIEkibGQ/HQmZmZMEI6YhxtLlH1GfEGnP6kTEU7BN9mseQec7w
	 2or2KvuVsNAWBAHDLJN/9Qw2lPM7BAz7Q5K3oKY2xlqyJnco1mk6ra9X7vnevI6yf+
	 7HaA+wCoGE/ShMmoY9QdzpduNqkr3lhuuPz9MPbtII96wXn4B7odCpWyzhBHlexFjm
	 1yGTN13B8ydGnkTT/O+7Pvbjwj0LfZE4GFF1wa8IA2fpcjgakD5+nkt6g0GEdCbIXX
	 TOLgX22QrXwm5KTsAuPulIPyNft3P93nvTAKLlEBgP7OBAbIQB6OlbMBgcXFgmSeCu
	 QwSYOxZqUIlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAF6C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167412308738.20015.9164611403482342341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dd08c2e80d46e1af52dbf49fc7cc61d9b2d24ccb2f754d1e0ffd53213ae07c
Date: Thu, 19 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674123087
