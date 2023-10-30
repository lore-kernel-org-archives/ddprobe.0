Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EA0DDA0
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSe8F5kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC10C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698658096;
	bh=CptBrKV2pi9KpbDQZme7w+ubADV1TiDXPr4ZW0Y8hro=;
	h=To:Subject:From:Date:From;
	b=QSe8F5kpfHIKdhtiGZ0JUbp2hSYv0Qf05OBTyewTPGe1OtOijnviamPkrZCtYbEAe
	 45eXeruymrz1ZiYUtkhE+i4AYrGN+qZYCSQxveBllBvau3T+wZzkNkHPd59yrZcjX0
	 k0LiaA+jZKIWzUsLxw1dl4KN2s7bKhcKgyoJtuNubx2QrkW2qDggko/tb/rpzFwk8v
	 x5WJIPgy50wvpHJuXRyqbYvyl5iOiaeN156RwUVcKFP9hIRHh++5dSt2MyoXMmTZlc
	 BInrHSMoJcDTu0FNVcXoZubB3IUjrknNx+rqHVUlT2rPjJyJ2RMgOMLCkUUYMv25Mw
	 zDaf2jPIjiP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B25C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169865809648.9789.2800472745409919670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60feacf0619d02401b7c728ca5a6b25a00615a74fb7a78b555aa59f3caa6bb61
Date: Mon, 30 Oct 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698658096
