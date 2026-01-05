Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC9310FD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767642834; cv=none; b=sc/mbPd3kMAC48Tkf2ntxm/zaC1n48szQ5ZtJnmGDOZ4V2dFE92Z9Qt85OMGMeckUpmCczca6/ijgDxG8XmAtV5WNO4Fgi6EZlzbXztbygGyRv5hJjgjAkEWsGX8R8FXKb4pFmnTWv7ZxGYYuAvWgG1/kE+oRdq0oEXa87Vb5tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767642834; c=relaxed/simple;
	bh=k9OjySgBwjDabfP5uDUG2Pij0EISVE1TosXdcmCZazI=;
	h=To:Subject:From:Message-Id:Date; b=ELFkQmBnEd2P/SbTBi+2U5oHVLw0dnsqGrl2A9U/K7yVGE/AQZRyvvaWJxjUDAWVNG9qGGtxnmtMSybSH6YAg+CwDIdfISpfyIxJrGKkMrgApJNG8Fb+UggiFtX7GmvLN7gWhCB8eJdjHJMe0GC9Z/l24CN5pbLyZoSYjjeEAV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3PIiF1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3PIiF1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAFAC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767642833;
	bh=k9OjySgBwjDabfP5uDUG2Pij0EISVE1TosXdcmCZazI=;
	h=To:Subject:From:Date:From;
	b=N3PIiF1E5W4Gbca7bdwQLQs06tc7I2Xlk6qRu1d8oD3dclq9YyGjaKK/+ISGS8kAd
	 lM+/etyp6P0z+T66DUAsKL9+t55e4uEfYcrN8xGCf9+QsVx9JfXSJVXHmajtcC42sk
	 wPkjVvlrUJUqz8QhBtQqkZQzXLNO7hQTLId0csVuM21uvHOwOL6ZPo+fhJBkiYF8J1
	 J3yMaznO2pY9IkjQYplGjJBcq3vLAiZBeL6MiO1dtPdVbmOGeexOvDPUkvu+tspdul
	 B/OAJpzyx0K/f7VvMUuinfA+P46MSermlt3zHSDuOPs5wsgJEtRrxD8F/2/aSj8ON9
	 6hTKZnTF7mOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA26C79FBC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764283357.25956.9942193558097304351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca1bd55761fa71cfea0a65f73c1edabae1bcdf75d89b6d900ac3ef5c8dc7d09
Date: Mon, 05 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767642833
