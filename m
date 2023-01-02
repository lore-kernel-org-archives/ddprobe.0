Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6E67C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F624C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672650087;
	bh=yQZ5zHeSdZ41oiYe9Ds2/AtkWIr/KPk1M0IKf9HcOrQ=;
	h=To:Subject:From:Date:From;
	b=uWKNj5ErxG6dsP0EHF7I6ZO3DIMIgIlqTDbBh0hLxInKFETvAQVhfTXO71jWonSZ7
	 dCR3n8vsfI8VCL8qmYs9BnSO1Mj/3hqkVfiKTpFEDTvWB/J6xIFKoMjNWKvwqTiv81
	 7DsH20fGcPWsHgJspVWbiJTes9hcNNeQaNX0Ewk38zJvM6+v/1bHvRK4LA4ZODMllg
	 F1JTSb8lLURWPrxBehIj7MvHGn6ZlPMabamarwjNLAD58LyGIVIbSOnvLUpYmKd/nb
	 fctGP3XwrzBthKheJ9qWHEX8TQ4LFy7/MfWyuhoj5VJMQOgGJmri9VBl5glrg+fa3p
	 gfQ816SZHAPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B56C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265008740.25373.15762546478082017102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4200bfc012ce3577d260dbab092cfc0c3524715749ca65014cf3a9ae4af7126
Date: Mon, 02 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672650087
