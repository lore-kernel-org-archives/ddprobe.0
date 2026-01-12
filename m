Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E717BB21
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768248834; cv=none; b=UcQGN9AnGvZuwIzfJvBXNjmABRk8ksO9kxUmcTGGADZIp1O36FJoXk0StNcmOrVgAu00PoobSuK/SNigRZ3Ys3XZyImh1rDJ2wFxaHe4joUlajSFjs1yDFd1yKnvvIeNs2ZjyPKJRgWFm2DWB0xvp5nvWU7N+dIaIx38Oii8Iwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768248834; c=relaxed/simple;
	bh=oyMEC/MN/fI4Jq7qFCJ5QQ4zm0HIa2T0wxiKua0E/Ss=;
	h=To:Subject:From:Message-Id:Date; b=gpcF3WvsMmWAFImNU5tXcbgAL33zgO7uw8WzLxKwEfArNL80kGQdG1zt8M0GOIeCQ6sZKSKXLjC2v7SnkeZzV2vMqWy3/5drPZogJQbhbpbBxdoLwE6pHnPv7LjfdRg+aucGFLXGTD4H9VrW6RJB0xHf5TFbVjbpd/13QLxkXVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt4Qbthi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt4Qbthi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3813C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768248833;
	bh=oyMEC/MN/fI4Jq7qFCJ5QQ4zm0HIa2T0wxiKua0E/Ss=;
	h=To:Subject:From:Date:From;
	b=mt4QbthiY4uaoxLWLvVJEuam65qs2cv0JQfOhXoa0XlGOS7IR1u4NfXSCfCaTXcDY
	 wTyXnF3kvF6CYFd3bKW4Unf39IMwovPy903aS/EgwRCUsb+dtXnCmD7NDZUnxiWSVG
	 XbIIiRdQ8JAVRXp/mAPlEQ3QYwB88Tk8ElQnM4S7FCbrDn7rgYbp6iDXfYvBEeHWxq
	 bUAdjrDB4q1ASWbTBgzhKAG+GhsbYpkiWMXHZjsNzxsB6saaCbF27Q3tpg/ve+bCB5
	 g9bGcktwucI3BQlq6ATXHLNLxOgMPj7WuLK/zSW+C95zyek/B8T/PUwr9Ijmz4qnqY
	 IkwX9L5lErRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C4CF45C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824883358.23775.17499242134481327431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3878d4505b7de374cb678b403f124f34057471fd7f8405be7b339fc81e1caa1f
Date: Mon, 12 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768248833
