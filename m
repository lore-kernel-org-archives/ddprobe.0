Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7C81DDD6
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717455923; cv=none; b=Sh1bX80wlkJOdH2O9Eu9AzK2wdJyrc6YaVQf/534HwCoPNlMCiD3nD+vG+EpjX3mXkDmOwYGgc3x/l7l1f0c835Z9yMhq9fYg42ts8O/qhv3UModGmbQlvoh56i4ceGf8C/E/LhQm9qyDEAOg6z9Oz5uQQgECjMqFNiy5II4W1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717455923; c=relaxed/simple;
	bh=5EdGgBJZ1H4BE3sKW4rcKg2xeVTPh7QaTzrRXPGRL3k=;
	h=To:Subject:From:Message-Id:Date; b=Ajb7nt3ppGFnu8aKQkW+je8nm/9a77g4ajB7LVEcNLwZrOKNRekFeU2y5VW5dbfPI7sH412H02l31SCT8ttgEU8qe/ldA2bzsWqOAtreZ4sKgMgRwCDsz+YPG3SfZfFl3TK8H17zgaEWWnTmugIVZNkkOEV3KvbLNPCjJKgYD+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB/DaBxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB/DaBxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0232C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717455922;
	bh=5EdGgBJZ1H4BE3sKW4rcKg2xeVTPh7QaTzrRXPGRL3k=;
	h=To:Subject:From:Date:From;
	b=aB/DaBxN7bYxa9I3oi3ACyFCC4SCxCz7kpCOmSU9s5bhPgvyOoMTjGTgpkoMpNuFM
	 B3LrJtukUD/x7wcw/m4vdFa4n9FrrQqBtAikdatdtfPEqlu8NkLS2A5CL4pmaZoGVW
	 /kNmS35XXZ0ZNmJSJp+8apIEqRhZz5IR73urOIBBJjFCtNud/bea51e9qLrODQKgbA
	 nnIOvBorr/KtU4mnpARWaavRrqLGVx2DbxfbVBmnk6y+r1UOxv03Qtu5FJPghRS5nW
	 Spg8v8MCjxRC8ZHAu3vxSK99v+8gJteV1ZU2LwrR+2MLCncrp5V2x8r1xJ1CA/KP4h
	 cOd/7IhIYSORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D88C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745592278.18172.12191285322417362566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79fb537edaee3118130d54407b2134fc82f3256fb77ef504a1db5ea5db92ba9
Date: Mon, 03 Jun 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717455922
