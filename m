Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE21F3D88
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A6A2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662461453;
	bh=DiNUlIko+FjiXSWDNK1CzqYfYqzAc86p7EyzjZ+HiNg=;
	h=To:Subject:From:Date:From;
	b=N3EKosrqDwwGx0zqGFs8Yyh1duvDr7Pkq5C6aUuWPgsbU74ocf47uzP3Gc2fP/3j7
	 RmQHgBYP7lLBfoY8P1eAxNQ+OtcSKQDpiLyXk59/cY0jAPzDAeMz2Rl+/d1r12i6X4
	 fN5uK/TqXY7tUB0In+vaZH3j3aX3CNBN3u/vXf9JdB5KgfP4yf6F5ey7Mq26CpRuhW
	 QXxzAyubAnK4pmnfu2lIYRDZ5QrPg+Bo/vrZkEi4A0NaJsae/W+NnvLsdGM3Wi4xc0
	 wlPJMMLlXRWz25Ymx9YV5yW/0P+G9gpC2je53lXwEaXhPqDlRK9CjonBpVBBEraZLF
	 RplinSzVUSZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA88ECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166246145331.31013.18223523922868976773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a197096c316d71ca18a543338ed0b00f4aaa379de8cc4342d3620352d48f3755
Date: Tue, 06 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662461453
