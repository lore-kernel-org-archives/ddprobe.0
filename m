Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2733D3A0B3E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776761854; cv=none; b=YGH3buTSO155VLbvkIjJI48+pMhkY6pdjGVaQcK5LkuMR0/CJ5GdO1KxaFySRScVWVMrUhDRNJ20d1KW0jj5UxcoClw53kv/UJgT+/CI6pvVybbFzLuKdM37xMBUO6uY15gmhpnMld/ekRrvGwzPTX141cE3wiPwhuaoEZ5CQlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776761854; c=relaxed/simple;
	bh=aBm9qa+1ZD2Pgc8YN31qvTjVJEgD0UXdhgCnL+xuLSA=;
	h=To:Subject:From:Message-Id:Date; b=XE5xIkrjRdU5sSS+MinyCVO/ntusOxHBw1ych5IcEfmo7wpW+H7pYBr42bOSI9rsQFSzCGcaKl+zbcMhZyFWPHm8LzFBv7oiB621c07CAk8KxX2bzt3VtgYq9FsyZ/jWgXIG/K6vOTJPXgIELOryweIffHi6ZK4Zga0P2GLnxBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XedN3/ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XedN3/ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A4AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776761853;
	bh=aBm9qa+1ZD2Pgc8YN31qvTjVJEgD0UXdhgCnL+xuLSA=;
	h=To:Subject:From:Date:From;
	b=XedN3/ruwn8biPZLWugPiE0Trdtfj3eNdR66M/BzBGJYXWL98p7sgk247BlQDT6Hk
	 W3KyGaWmvvWo1qiJg7jv09JVE5lWoS2d7lecjw+fGMsdeFLdzyqKB/jfv/73Q0Kk52
	 RgLIHVIL2RtlRhwoggnbO4otCTv/v/fKs2bSlkIu4yJQVoKIy0pPuZWgCVQFeYlaZB
	 ib7lttAMHNs9NQvQI+v9xOKaePc39GRV5QpMEuaDu+nVVIVLYW5ihUv7L7MBVibVSw
	 aoGrMAi/Iuuag9niNlrVr7p51hsqh9olCikS2O6FwjBtFsmQCQsumJrjt+n3Pa+ZjY
	 uzUDxyv41RseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA70CF327C2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676185368.8966.15910055838467236148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ce3a3fd5d61f355a841c2096106c80217d6fb9cc27c64f2d8f39ddb52f61ef
Date: Tue, 21 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776761853
