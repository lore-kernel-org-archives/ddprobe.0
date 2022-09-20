Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC1C2570
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738A9C433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663714853;
	bh=yFRNPxscfiyxH0iVC9Eg45quFOwbnh9mJrvMx5gsLfg=;
	h=To:Subject:From:Date:From;
	b=G8hfpN7OFxDuOaqsIX1dar00KAFmjlVH/mfKumZBqizcrhQTpCjDt+WenXjxa88WM
	 WSp2Pd5SR+Ulhuonz8iKSSnw/uolDd8K6gtPfsqbI7FhsW6B+6W4hrovaRsS4le68z
	 1FvJQ3U+Aps4QO3BPbrgS77LK1xcTd+Zq6UoVRdQLa0iP25MXounW78Xz0XQXIofOT
	 2NCjl0ANetf1t/TfkqhvPZ3oRskfNfT4KlgdA2sLA9TnR32PG2kvvX/I6BhAkPw2HQ
	 grh3TVNqsCRMc342CRFOncXimZuqcu8tiKue41Z+8XU4Ev1yPeT8M1Gf/RulbQqeMJ
	 6+FQrMyaheLmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5711AC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371485334.27200.6172212775602061229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b305c296944c8bb9fa8d5a59a42f6a3710f419d0f2ee25bbb03166f9eed8ebe6
Date: Tue, 20 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663714853
