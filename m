Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43DE2F39
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B2BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669506054;
	bh=anMUrbK5+s1n6Tc6cvDNYkf80hwZVlp/ha7Jlz6e+/4=;
	h=To:Subject:From:Date:From;
	b=d6W3z66zivb9o8OG96jWdNAn/OEGVACDaLPC1fzUGklRRJNxpTfhOkt7Bv0e31/Rm
	 KVBDKtv8ajekHbY3FXc+HbsVfBZFzzz1CN9oXbYiCVt0lenor0NMUeIsDgnjRORkrr
	 Uwd2TyCSoL3YwZ6VlQZ/ole1AXOOznMZvS2oiJIq6vfDku9cHcsMM3eXXbISKTJxLg
	 vRNdf7h7oUzNtIhoaBizYgJtF9Rd4I1kGLFB0dWK1ov+r0mifN+TAnYarKrxBvR8/7
	 n11rf4cJt7dUt/rryA4pzNJci2Oa8XyBlXTXI/QSVR6G8m0HzcXxeWhJhTNO9hXNW7
	 YU4J3lkoC6vjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E31C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950605436.9007.17322739043665476360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792d6f2bf4547ddbf60c6f21eb05af596e20c5d56aa2331b3f23dae55380c4c4
Date: Sat, 26 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669506054
