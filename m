Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE7A2F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88ACDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671307887;
	bh=JqniHpLRps2f1EEZ0i0xhC8KHybX7Q+c18+D7qkY/fk=;
	h=To:Subject:From:Date:From;
	b=SjftwNtaqugwCBLivX51ib0LvI50loBIxrbRIsuUZ9/KGScBsOkERzpYeioyDKc97
	 TsnteEK1Iei1BrnvpUo/dVtv/9nq6LjESKw/ZMT0o4RzR5IMjwm0t/94l1dFJhdE3p
	 +GBUU98Ws1lX73W743zNUi+K761ILOBdlmrJVy5Qp5LEJ77cEb5fCWIIQoriK77aRA
	 DixQ7eKbtaX+1Xivn+78ckyEX2alp03Gn1duN90zFKDLkIYJodoQaInosIktM8QiGF
	 dj8OrW1cf9++bCC95V1LobKSQiqh/mJ6wYw3xxXdApVmnrWggIRMa76UzQ6ytuFAKR
	 ltUouuHKk3pMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E303C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130788742.31812.12860903063663167057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039a23a8f48e0944fc807069dd06a113c5996cb3567a0414d938437053f206ef
Date: Sat, 17 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671307887
