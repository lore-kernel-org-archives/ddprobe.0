Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC46715A0
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBEBC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670034654;
	bh=REcTTxmzYAz3m4AfMmuTMA1+9+wTaXLm24KcX2gZyKg=;
	h=To:Subject:From:Date:From;
	b=V3zC+FTqvZYLHvYAJP6uj3GGKJ5W59oaPExD77FQBN1n2OCJS6IHEnq/E6r22uYpU
	 28AodZrook2rWDL2AuACE3TVhPTJKph86vg0+2m0KCZ30CW/BupQjJlZoBB5rBm2pn
	 vvpUbS8WLbg0ocO18W/Y4zf9EQUHKxwi/VTm2p1st6GF3TGt9eZp/GzT7OYsSDWiD1
	 7ojrz7SV38WZFWAdCKOvC6gXlPC6Kf3PQXR+ySg5QA6zopyjdjkKhzBnVlkMWpNTQ3
	 VSK8KBckj/tzTM+8Gwu7aGvuadesJWWHSO1xK60TASxpp1r5+X1bVivUhk/ToLVb+R
	 TNYK0UgFH3rfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513E6C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003465432.18997.17410432962545193560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b0f317e6162263e60454138fef87e9fa1a9f8e91b76b09ef33f731f9c021b2
Date: Sat, 03 Dec 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670034654
