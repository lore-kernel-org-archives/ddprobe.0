Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C1E36E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88507C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671933087;
	bh=AlZx2KCduMAilV2IsaD9qeB9w9LzPQW6RZNSQgVGbxo=;
	h=To:Subject:From:Date:From;
	b=NnXeMi/ixUrh2X5/uFPyFxYDKtbQwrnYwN4NTAHsd/MjFHxjbbebr6Ravz4ClWera
	 yn7EDQ9OOgF00vpH5bDS+VjuNqylwQWGJX2XIU0BpaGFbTkB7tJ00qwYsO2/DDzh+H
	 ozzcqLnaKcMV99DsRthh79n5IEwHZ8R8gp3slhvJ0VUBExsQq8kgdbrXIOdgcvr3n8
	 eJN/RXtZlMJW+pPHsFo42vaWDvxPZNbRVpBCl1HQIX1PiIE+YL1DRaZhYlFYxvSLc/
	 OnOR1HA9Z4StIkmOpCq2Cz8jlhdO/Z07BD4RmR0tmlT3f5QK9u9qIG8eThCtbKyVCT
	 KSaWDCIH67pLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEAEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193308739.32372.7420717680416906406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a0688725e35badd7b734031976f7e58c4d9d9bfa3bf142c365b4fa8ef4e170
Date: Sun, 25 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671933087
