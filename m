Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4855533B6C4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782646714; cv=none; b=tt85ooS0vKSJMi58XlzKW6RsQwz/+Spib8xFx9JtCBXcBHf8TYagISqImUsO4UG0qeHCBTpCXuI59/9e1sY4WgpfW73NO3GSH86bgLzBqogMJu3GGZ/QG9+s5uR+iw6XVJzgzNgH3yy/lHXsREJfdVovUgGbh/rEA4UHLzQwF8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782646714; c=relaxed/simple;
	bh=hmBs/gRMWF0XmwHNmjM89DVFp274IdfzAS4tlNMF0Y8=;
	h=To:Subject:From:Message-Id:Date; b=LdoxUBf0aGuMQ5vuz3hJu4rIrhhdv5Byb6C3j3i6rxsqTZbhHnhp1AWF6ezasVaVkHpNM52KJS1H6FT9UxlEZvlLYtMm/pNAU3nICtTjJL3Wmy46rnLM+Ysgt/pMP+iEsMOxQSGedrNaUW7DrmRmlbJ/1wJihQfYltNys7Vkkx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaFo2pRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaFo2pRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5DCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782646713;
	bh=hmBs/gRMWF0XmwHNmjM89DVFp274IdfzAS4tlNMF0Y8=;
	h=To:Subject:From:Date:From;
	b=XaFo2pRVwW7FJxOlp65aVun4jJUHBnva01IX8CHoRt3unoCdwQJbhL91mYdZi6Aty
	 zIPfGoztv8sCMkwj3dB3QBAt5hf6xTX7UBKaNoBTLQQlMSYRtsdd9vIT1Mh3fABoqT
	 xxdy7/Ud6L3X03RgEGVtKOQhlIwXvZ/LUygyHKLzPwrzfTAQGO5fgKb1Sy1AiQNzIt
	 DHWxVj72ue+XNOipvtnnwWo/oKYne+l8swHnZqZd2XQbV5dxWmEZBeGHCe+VgEtHw5
	 6x+OIFviCeRn05MD14E/9gSD10MlR/jw9KtiuTjCB+UozluAi9l6PzGh8Xh74Dzyn+
	 OPBLr+ay7i2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17B7C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264671370.14140.5981343440841581093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae77610fff84cd0514d941f6bf5e2662a80f14fc3e112994e40bc1dc8970205
Date: Sun, 28 Jun 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782646713
