Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C2127F732
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746535794; cv=none; b=fgoWcZ9WRSVSSToHi/X1F3UmMZZ9DdKPKTGpQcDPTzkYdiQrwwI5rtHtwQ5FZtFY0yjb2I9+NWi0qoc/3ZMMctrhlZQz4yMhOan9NbYHUaI/bSIc2w743aqEtmwtyVdnVFJSWkpujDHXOAiD8lb79+XP8QrXuTxKn0PFGILV4c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746535794; c=relaxed/simple;
	bh=C4PyMu9L+PwzCn4Cp8afA6q4SjW0UtAUNntgp6MQUZk=;
	h=To:Subject:From:Message-Id:Date; b=jGOG/dTDpZaD0Mp43SqWlfjYgBzPFFPaf8HleD5IipoS0hQJaXnI69sbjg6T3OBRY6VB0J1n9z4QJQ7Pc+u0VrBBJXDvkNWtN/b/m/cpPSzHbWxp2jMBQftf50fx074bDMaSPTeBi1xbiR0L6+4YhWhpShaccwmw4/w1gYAoZ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3FwvWXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3FwvWXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2312C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746535793;
	bh=C4PyMu9L+PwzCn4Cp8afA6q4SjW0UtAUNntgp6MQUZk=;
	h=To:Subject:From:Date:From;
	b=H3FwvWXhbW761J0WU9HlkG/U/aR9QRz3m2nJ+qXZ4pdua7Sg03tVgy9AoGWPrxk5W
	 jeaVGB01AWBYNp6ZEOGZEa534ynafwJAUO9UqbgcoWiAoqdaviVuE9xYBaoO1GY+to
	 xhcUelB3w8irBOTy+0n5uGKunaI8D8+BrVLdIs8b9XTjexQPxWm+wUI0qeOHcHU3fo
	 Ygyx9Vj8c1UI19MbrAeh2L3OZSCL192ttuXBJM1tqLd40qQ/dnaPA5gAJOpZttSfju
	 OK4nJp5annH1qED/82exUZwfolQVrPA6f915Km5l6gzNaNqJ1Vm9DbVt0fm2RUlr0M
	 DJZL7e/KICsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CEC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653579358.7395.12074071267142283778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d450f87002d769161b5d67cd0f347d0ab4f919d5da820ab125539ed01fc23f
Date: Tue, 06 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746535793
