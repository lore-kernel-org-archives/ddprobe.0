Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1D02F3D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6B0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673735487;
	bh=Pt0EQhz7SDz37XXxVwtI2K6S4EX0Dvl0cJvCW0ChsJg=;
	h=To:Subject:From:Date:From;
	b=K9Y1gjCh03qwVqQeMTvwkdX/k4zi0G5AEayjsnsRNrxrVTJprvtzhGEQTQd2O6FeS
	 Tbc6OvvL/a117ZVGog1YABPawy9rZFDWgC63Ffux8CPxpmQunk+nzih4x0KgHvirFQ
	 H1lDOsZ9LZOD8WpSFqmiLh0eP3sBvdZv0rc1rfBHc+3Iic/fTv8keTJz5GQlKX51R9
	 l6LvsZRRA1OeTiqhLqAczuHslYtvdxzSr8mWOtPaHZzjUYW2PQmSwd4OcMnCA2tKhF
	 6fnu2d4yqvhxc15C0k0Z/kJIO7j5ZlqAwEViuN78pl4zJaGqGo6+8oUAar8vka6mC5
	 glww9fAReqn6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626ACC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373548738.3741.1414428461510701104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739e78d63ceb0f505d950a2b66124326f699187465b966a374145e8e88b374bb
Date: Sat, 14 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673735487
