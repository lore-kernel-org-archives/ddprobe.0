Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A83C881E
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZupQhn24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D07C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699093696;
	bh=i5bO934m4gQwjcG346y2aqPvnCeMmfaN3jFBBDVotDs=;
	h=To:Subject:From:Date:From;
	b=ZupQhn24vpjxBfNhpzZbh/e6/pESIU2aG2BB1oFV/lpAguxDhB52M+gRlH0GlGPmm
	 BJGBs0aDsQkvhFxGYSGXFccV9A3y787CxlKFL1v/iqMjgJmdhsxJO8U84IEgYct1eC
	 Elfl3lbRDLdfaQGUs+PUOFfhqMS6cJSMxAFkunZyzu0mSprtzoJ+THt4gYGrhlQGoZ
	 Z8YnLxO43QV4e8/8oN9r/bQ2m/7Ip8kTONgoJ3njSOQ7FMp9dyNqtpa3AXoFr3+2Qi
	 +bH+1bT5tigMGaZBuFJvxyB+fY6RlB7df6YaZSBxrQDy8sbmW+yPjoXqCFOINlwxkF
	 EKBBQZyjc2TDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0D8C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169909369641.9327.3472193106154290375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69fe974cd64f979be63bac6354f4303de00b1a1938840859a1ff82af3fb2dfc
Date: Sat, 04 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699093696
