Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D6D19922A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721924754; cv=none; b=Gsv4oEbVyfgkknAdODNQ21+5HLnJIhw8sAQA1SjSlY/AZ1M5WqF2aQWunsST8p+4Q9hRxAHH+AudFdSg4YQI2jNhIWKUKkawt5Eae8dXUm9lm3vOwzIgZyC+IPYBsD2QQTi7znCJ5nA6+yeOsq4QI/Txa6Go0UxwnohqQi7SOWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721924754; c=relaxed/simple;
	bh=alepD6YzvE4AHXBtEUWbjGb9fePlwLGJdlFRzSirDf4=;
	h=To:Subject:From:Message-Id:Date; b=QBKa1ryKAm6dNw1BcLHCfhRktxnSUx9tXaiZKuKGgyfaR8HI8RgY/LC9mdnufksIUjAzomtAiyd2RLdHyjNPQNNf8kUvQOQclqwXF5sfxP9eKWtdXQTfOKOJkiaND1tdtK7A6Z6rwGir9JjEAWgq8n6ONQPDH6CAWV5IY9KfHhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBa7EzKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBa7EzKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E9CC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721924753;
	bh=alepD6YzvE4AHXBtEUWbjGb9fePlwLGJdlFRzSirDf4=;
	h=To:Subject:From:Date:From;
	b=DBa7EzKTlxgoRPP0YfEywFTxmBqvOnTTMfZYZ9kKf6VxUYBMSZQCFbd7qI/TVUCSo
	 NtOnKXTxa2r8s80tK/SKpwWtfmjNun3+8iJJWpHL5bsadBkLm3C7h/RGJ66SwAuvXD
	 CS3JvPF81zrCWwBax3zljgfdYOo0K2TqJsrzr+nt+a8oCzAehxgXzxiGXeKKgTcwc0
	 SiYiQ/vKzRH1j7vzzg6SyV02O0UbyRLU/Wb6LyQDQ9nc15ZDMThHoq8b3e69p90rXX
	 xPZJPQ6lmJvC0tp0a29vQT3cZ6WPRZnBjy3oT9YQtkjp1ckFTISjHk/kKRAz3O/6F5
	 hK1Ix5UQsQJMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BA7C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192475365.1318.14551339065535165467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834b42e1f0dd9256ff5109abfc44d3ca307d7b511654020178adaa84178411cb
Date: Thu, 25 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721924753
