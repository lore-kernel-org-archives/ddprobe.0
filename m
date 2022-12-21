Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C112C1C13
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBA9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671633087;
	bh=m+EVjjUgae+Fqxcss/+uDp5JBK8BYfZE0L6AG2ThQnA=;
	h=To:Subject:From:Date:From;
	b=P5xGnvk8BFALmGOA7gIB95QWZhICoi+KHfSDOpI11fB8kL+Rs1mILYDh/WIZthMI3
	 Scx3/m5otGzB0lUw+AWQkMVPk3/TIVlvOISv0AMjCttEPsIhaXdUGekr/SRiAOZZXF
	 QSrTMTpmWiVjx6Ieak9RggimBsUNKVk3se++wyYyzcnvy/ysNtxnIAYfbs6vfVFXgg
	 Gx4MpyODc614ILPbAHlBfgLIrXfn4tknQbHiWYKMlZ4xLHcFysq6mcRAIWjkKzx4ff
	 DPG7bNHf9/5S4J+yUHwGW84QJEWNsifehcc9GbY2Xc8FJjg2MsPqzsk7qUuwIUD8fE
	 4jXT6mQRN5Waw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61833C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163308737.6464.1924328931234397251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831ca55ca1fefd6cc0d694e2f038f4b35b55f97d5f28cbd8a2942444d560bdf2
Date: Wed, 21 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671633087
