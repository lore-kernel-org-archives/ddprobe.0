Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FEE1C3E
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBB4C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667640054;
	bh=dpqfF0ARdxYm4k+Zu7CllpS3kkvUHzg6YtNvX4IPSEI=;
	h=To:Subject:From:Date:From;
	b=dyOcl9ET15S5HzvDDMqQcxy0EUhQhGJB6agpIu4mZ4hCwms76/MZGEDB4a77Exjc1
	 2wFNeEmFAAdaQYJMAqHven/anG3tcRK+Ty7XGHhqfl9ztX5ZwtakautAb3UNaoDBEl
	 /NmJe7ves4OZTDfJC7xfwEJNHVevSvpFvSXT4yUKtTRiezz/Y9fG6LI0h702qi/NDB
	 QhDzyEYe+LSPf8yqvTs70iE5epdQXn8T8wUazKB78c53Jpi7lGpHfhvuhpKfdlKglR
	 HAdvrvdh8DltminVF1jS2SIR6YSwX+kufMU69ulIaISHq0bpy70+r1OobWhYhao2Ko
	 2tLrAeJQ22cDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9DAC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764005437.16185.4606298193728361940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f55f21a7974af7bfb765ab1939f98ecf42ac43b887d12950c4b5f60dd6ba2a
Date: Sat, 05 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667640054
