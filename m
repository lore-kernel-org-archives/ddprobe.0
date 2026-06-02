Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360CB314B66
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780437874; cv=none; b=F3TaZzMCmIjquXr7hP09CgleOZu6EgEyUwiDPgOklQqoaMKEb6YgWNgL9eL6AMjW+EuWcYmVgZFMHHCoFNb1IND3oIkR1kCCLQ6Nc2JnG5GRaNRaS+f+19qMswmUXLM+VckbYj+SuBzh6mccDs9vS4aP3fSS6UaD+Kt8K8KqKBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780437874; c=relaxed/simple;
	bh=kcfJLWJZ55r+SUWzf+1Ae3Ww8Le5YjlXnUEIU+E6OzM=;
	h=To:Subject:From:Message-Id:Date; b=bt7Ln/4DySApO9fUBNeMVyCcY8ClW1S1CJzEOF4+0gqO05vABVGhbs2qsj5SqGSNRGMpNeaj/KSGN33xtFSW5nsfJpaamK7JoTSAVcq2v/HhJFG520Y2Zd3CCWm3a+9EiBOJ4FOg0zuI0mzelSqV10BIWzf9X4LPsBX27EKJzGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufUColLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufUColLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7BEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780437873;
	bh=kcfJLWJZ55r+SUWzf+1Ae3Ww8Le5YjlXnUEIU+E6OzM=;
	h=To:Subject:From:Date:From;
	b=ufUColLbNoXGm3HbzlshrwgNYZCo1AR9ylXqKIK6zLf+PywqHJfRJQyAYJ61Y5BBj
	 ahWfKbRIC32QRU6zPzakYWYOXO4Tk5yWrZG9tGJTKO6Equ30pKpM2vJ4KJMRwAPGDN
	 L9JuFMpWTjTi1MUuDcpOxzdPrutm5XHE+IZMA7ZyQ6lv2kEB7P7TuTw2SuHlVAJsj0
	 umNhDiFri/YtxQWFYEDASp0A2KbvUJDeSzpqIhJJP5MOSmnRZiNhchtjxX6dIoPqH4
	 ffBE3uKnUeinId4fnnkNxjvd0bZ2rkHnHTk30xLul5rOUrKnqBZ6en+/MkiaKlm/fr
	 mbkwBaO0+Iwhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2446CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043787371.26385.7306068367695412221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad407fe030a8f3081fe13177e47134288360a28ace6b04e9308a41b27d699616
Date: Tue, 02 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780437873
