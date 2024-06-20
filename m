Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B1F1B3F36
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718905823; cv=none; b=YyJPc5qPqpECBrnbtQK+VbYOVvJBF4zYVe4Qx4BoF50FCGjrngfRhbJP3DB7s8oi4d/kkFa1rCw1HtI5xOML/w2ItgI4CWEMjCrCg9C6ZNFb9KVj2j5K5KU85OJ6iOrt1jQ0pHhTwRBktFk8au1befKEupY/OxcP5l2fMUmlIPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718905823; c=relaxed/simple;
	bh=Veiudgn7Kl5CCicNUcmUXLojlhbiZsOq674JK/rX0As=;
	h=To:Subject:From:Message-Id:Date; b=CZ+2jDHh14Xl8h37MqH/RfQCLtUvTNzUJj1+FvqtLGC/cyvNYmXEKjtEJi7TUaVwG31s70m0NB3NUGylCcvvxH0KADe1K0+ZqwE7LCFkq+m6KrHsgpolYE9FLnHsKdK1hcwLBmLaEyL4I7EhdjCd0FVtWvwUGtSv9lcUmv44d6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcMvJ9QW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcMvJ9QW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2CDC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718905822;
	bh=Veiudgn7Kl5CCicNUcmUXLojlhbiZsOq674JK/rX0As=;
	h=To:Subject:From:Date:From;
	b=KcMvJ9QWrd0yQiKHWw4nJpII9iY/+1koZGjxDgb7IVX7v9+1oi/JXdDBF3YxBRNTA
	 sk79H9MiNveYPzmP/3mo1XNivYNGvZAxVGEvKQzxo2moVBdeXxSxZXE9GMB5/9PILo
	 8bdiY64eRFShbYpDG1B9iVpYwAVjjV45v37KdZ1uchJ7NrA9JdVsJed/m6dy6G96ua
	 v0X35Ek9h3WE/wA/xWtC4KM5judJsPZoKOz0gj4aZ04WVNkyLipjpW1DjISgpTkWUI
	 VvVtwlcKJTb9T9yXYtUhcHnAzqlNs7cw4WFwLS/H84uAIkAhThpoI1ucpSm4fWXBLA
	 YnIwslEgWo43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE99C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890582277.11069.12997150023671381933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff2d957eb015df75906d67ec871c5e3741d17b0ac9a653db741149f7912e3af
Date: Thu, 20 Jun 2024 17:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718905822
