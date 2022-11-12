Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C336C7B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C3BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668241854;
	bh=6wcaedF4N80tewX8vx2I/VdQMc16H0FmmBduBu4iso0=;
	h=To:Subject:From:Date:From;
	b=EDedS890gK6zE49Nzr1Ut8Xlxx0I/rqTp2Eddb15NKU16Xj8wo5nYrtRbVhzhFV4d
	 94xoPzHnrgccVu4C55WgI9VE4+thIbtir7Fw19kbZYNi1TjTINJwydikwlDNmk+X91
	 fIVMlKQZ9sgWss5BUVpP5doB44HB/0oOckb7XXEkRz4Si3/Iv7leF12/daehrg2umn
	 EVhYd4ST2lt2N18p0QVQOtpIidx4WO8nDebGij4ry5dmUOnq01z27jqpsDe5TEdF09
	 bewwjtANP4GBxeNdIEoA34mYJDdUhQVlBbdy1BQO2M/070HKeka6DDvrnwrF7AbSh+
	 ogbiMk2JF0HsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557E1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824185432.10655.12753194789238770442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d23e7673a4b460069feab9ff748529026b99d8e390e2836cc4d741c02986f9
Date: Sat, 12 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668241854
