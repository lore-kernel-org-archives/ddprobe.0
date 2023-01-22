Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3A33D9F
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 20:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC80C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 20:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674418925;
	bh=utlwakKEDAm10ZUaqTkTfnooiiTJZZLOptQJV+ht/rU=;
	h=To:Subject:From:Date:From;
	b=syXCVEdQL4v8noUe2dM7ulFDAvKyQCaKeuVVV7d2pUBAxvbqbF5MIH33OUk4GyN0w
	 w++rtfbEj/Ky/bG+bU98W7/CQb2RCuvPAnC2dvltljG4tnyYQRkLe0Vbuqnqt6n6qd
	 0dar/PAfmiiwYWWyLchC8uJsi8hn64SYcEdXZWG8vEz6TLsns7ug1Km67yQwaZV/U7
	 q0PWgH9jiRJXuXNVEIxxXDgazT7leASMDorZkVeizD+pL57sg/jpbTgTKxdEhoh2lm
	 04sIvpeZIMJ7vodqcsrn9rZy/FgVTjF5caUiUK1Q+SB8Ck3EtpasuGwimki5Tlm4yM
	 EV2ZWUHmMQDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37A7C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 20:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167441892578.9024.8896602631384863689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ebccb63efd018caa67174240c14d3f08255fedec4e2f90620c5cf90da835a8
Date: Sun, 22 Jan 2023 20:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674418925
