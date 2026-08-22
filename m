Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AEF34FF79
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787381434; cv=none; b=Xp1Egb7+Ao2rDOHaRGcB8fKwLsloSXjPW+MxqCoMqnkJMLc2Cwad+Bsp2ha/iotb7WSv9pnh0FS6JnplOryvTZzkZC0gpivjueFlMjgvpG35W7S8Lni44Uspqi/UznScb3EiFEFCJ5MtN+eCoar7KInjX/TrmivaQd+p1WaFk6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787381434; c=relaxed/simple;
	bh=xGZSho3By4KdxkBiN/2l5Srqo5II3lhBsrzlSRpFe5I=;
	h=To:Subject:From:Message-Id:Date; b=bStIy0HH03ZHjcFg7/Cuwn2YClZCu1bvsMDnJIBwxvbLRTWvVu+4RyEQ90dGHVdCFQKWO1NenzSCIl6vQ8J9KA2JrdCgkPKXeEw/e8ISs4RcI3xpDQd3HBrSHOScHUvg7rzJkyUFTrsaQ6oAK5z1LhXmhO1DNXS6W0cw51VQwUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt7FfAYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt7FfAYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8641C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787381433;
	bh=xGZSho3By4KdxkBiN/2l5Srqo5II3lhBsrzlSRpFe5I=;
	h=To:Subject:From:Date:From;
	b=Qt7FfAYQpHXjRai44Q5hd5ln1qeIpRlcnvtCzz3EJiGEadsPbUzwYOVWy3XDrCzc+
	 Wqvf3K/0nD08714d4pxtJdKAnRABnZQM+vXnGjdIz/N48GPLId8fUZoRPzFMh3Yen6
	 eWB/ME8tST6y+rpsSQpNsllegAEXL9Tk0eRmIrePjzw6YpX/DVj0tWBBkti2T6GyFR
	 4G3FgTz7tvVptUcSjyx22lALD8g0h/1pnyf0aPXtan9MxZKEKnB9SrJFkMXs4jldyP
	 BGE8GRf+/07/vq6ww2M9PiyKcBGdenSNoYWgxkrf7O8ptOW5qf99pAbBWeenzMTfRb
	 0Lug7Ski0z4ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1792C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738143369.28862.2434058012803491889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9aae554cdae204e614595835dcec1514113803df05c3563d9b6c4a0feb41f93
Date: Sat, 22 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787381433
