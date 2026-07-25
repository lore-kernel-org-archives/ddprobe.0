Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6E26B74A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784991634; cv=none; b=W4EAtBafZbFkkdyRh2WqLGfe4RpXcbABBUMe3PpKzj2K0MKIcjk4/ESosVgpgx8hfAkchZWiEVzaj6GU4VaGlih8trvJkjtvFBBa04ZneBx9bydr4LmpuvXZGtBG5GzTJIwWuTlMLAHqUpHlmK6wkkeKXHV37sI+s+wLg4AfLTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784991634; c=relaxed/simple;
	bh=h3/eUyE0ca8oaAwTR3CNQpbsbGT/vySxz0sepOXecVQ=;
	h=To:Subject:From:Message-Id:Date; b=ZKvVsMbF7RscT4Kfj2Tg9Ey6d+TFRYTNFIxZMl8I1bbU2PrDAISo4rWPGEAgDvxbBKFfkR5ZyXaBO9LSuUKG9Ln2NBAMIK9MLo4jF5FQ9IlS8cctE9kXGNowJdVro9MZdts01CHl8VdA3SjWXP3sJTAg9yeI37yozvw5NA95/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWwUPq+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWwUPq+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6C7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784991633;
	bh=h3/eUyE0ca8oaAwTR3CNQpbsbGT/vySxz0sepOXecVQ=;
	h=To:Subject:From:Date:From;
	b=FWwUPq+0E8b8qyKxaEDQVYxYp/ZZ0lmnJAH1nnAo9rQgHH9M5qVi1igmv3ZMXAhJi
	 Lt8pzmY4c4UCKhWY0fqzg/VoLwxNm/soA+GpXTPF9GVxw7GKCme64wmx1eLi6QwPpl
	 0s+OD6RWJE9+/sJjWiVXNwc9QNBX5YOwhzITkgL5SsjJef1ira8OMr1pcGaoCb7oxm
	 AL3ATslxuPR7OBCwimtcNyx/itu02cxj73F38/dfosALpjplvss7Aa0nqh2xy7uV1P
	 LX+NsLg1t661CXrbhg+P9Kkg00h0h0nRmq4OVYngJKlycVGuiAdZBQepZMJGYqkht0
	 C0aoYoAvgstKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B28C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499163368.8533.17905251689610930499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09316ecd0fc1402530be0bf478dae1804de836723775e2aecc011f5ce706a312
Date: Sat, 25 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784991633
