Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0DE20FE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 14:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F26C4339B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674223325;
	bh=Dtdn7ipugJB0MoaPYS0nGNiApU4L19PJ95M9/iqB0vc=;
	h=To:Subject:From:Date:From;
	b=qKsNUwtICQ+uXxWk9od3qrFQ5Co6VxwBI3+7OlDAVYXDHS0AKcraO2b8NmR3OcJ+B
	 JEAISBc9ViTko7yg0zBOpUyZuIWWqHb7j1cQprRg6IAT+zVi8hbbevDW9AmkTHiBc6
	 J+/3YAl3tawmwg1dhm1fl7oZn8YLMm9F3ZooaXRK+jnA0tpUW4BBiYkvVTv1Rj287G
	 6NcXxrdiprIoUJgJyvbPjO59mQJ4nAn7dZ1T3WiLbPtBP8H9a0TKnrL1DMb0WdxwTs
	 X9iKZ1tJnApD95xO174gDl0Nwm8SLWVQenaG126X3QJasXQqgDpduXvigU77sJ+54F
	 JeL2TSJm8q/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B191DC25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422332571.4331.1887632983149740390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e88eac03910ae5c4255d0961c2d00c736873346bb33583c456ae58c483fc18
Date: Fri, 20 Jan 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674223325
