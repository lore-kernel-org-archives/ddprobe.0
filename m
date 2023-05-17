Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4827E33F6
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 21:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60C8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 21:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684359905;
	bh=w9FZsRAwFy7FLTtQvPN8P2FqLGRaG9GAKqHc4gNuGZg=;
	h=To:Subject:From:Date:From;
	b=Q6VHCviQzOzat7tG/4p8sN7HGIiRZYaDg4tzu1ffKENxAzT9pdM9mPFVg1VDnqchz
	 YbsiI3mtQNz+fBWiqdmxdizOU9p4ueuhCm5D1fuQCZrahwwTEp4MdiM+s2i8JYMUs7
	 CjdQTol+qKdtRDvlpb/nHRvZQouwHn6T0zlV574j8ygGWOTIkQtcqQTePtSPuaZ1Vt
	 l/pmHiX3iF0Rz+/KNWHwPmWGwwkrFKn742XHATV+yAHzBsIGhFqzxwUTto7xI/SVWu
	 TNRlopJMfoX6FepqLKnZ9HepGiLD/W55VKK62Is9x05AmU0m88u/tVxIJUjuSM3ni4
	 QtBNHkvzLL1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C750AC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 21:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168435990579.7006.5175639675060592407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a9dc51ca3122f7996eb05b7b32261f833873fdbca0add83c94b81ea19f8182
Date: Wed, 17 May 2023 21:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684359905
