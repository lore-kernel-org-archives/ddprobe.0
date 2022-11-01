Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6061E9E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6C1C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667322054;
	bh=gXtXDGi0qMYmqBe1+DZpoPj8xFqltPudG8jNgnrY4Qo=;
	h=To:Subject:From:Date:From;
	b=Sv1ePiESFYAISr59zxAMlkNAmCxhuZ6APnkl3jl7SBTcEmy2VJAlxaoRgyf/Xqf1G
	 Lf7PAgigCuTWQE1HkqayMWW9v6fUPyKD6Mm+zTD2FZw4K2RiF39SAV5ZhVGmhkYolx
	 7eExGleT/ecSs3laUr0dxVb+ph5v5rtTG6Et824lqcTR33yk0hAoOKjuYMb343EDvf
	 IxOMMaAwjfWUOHtH/ZsuVEyRSSM6DTbL+r3DCixrbBUXmGgb61vEnuesFVkyE5YETh
	 70vrP5XS0oe7eb9b6rFTL7wARpdf+9+KdTK6TOwjK9m7lkm9m0SIQxBBnNPbOn/gc8
	 tg9l0LCxBRXhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE23C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732205438.6662.11558157310126661810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff32133f311794eeeb2c70305d5b185002686fda0e477040e5a7d679043897d
Date: Tue, 01 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667322054
