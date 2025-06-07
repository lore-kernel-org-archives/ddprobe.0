Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA2EC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749275994; cv=none; b=t+WMzTqLumGwMjKVVY3MZGpSXD4qiFHeoUSHQbEoHcySg/uqiKgJzEwu3UfbK3PI4p3yna1JM3Rs8JTo777y7PlW1BeZj1bO8OoTroOELqMyYGXpW16geqEJsQVxwkM+OmhMb6/Hj76wT/iwETr6lddnlzRgr7E03zdoBcftk4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749275994; c=relaxed/simple;
	bh=1E6fjSZ9YBI6bwmEQ9jQymbHXow7+9BGygKOagTLpcI=;
	h=To:Subject:From:Message-Id:Date; b=dmXySTOMPIDwv/eKOgkTqi+KhKy8nLDe2uAYOlqRNdX8EhVKZZ2wkeCYXQ4rz2um0HA7ogBqDf5V1Z/1qRMkFmQYVwDB3/AkuEqfBfIKebq6qAGgGBmKQtU4H/+6rB8p+fk4XlNxarDculTh9oMHGD+3pgfe48IdnpkmxneEOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKSvS2S0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKSvS2S0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6DFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749275993;
	bh=1E6fjSZ9YBI6bwmEQ9jQymbHXow7+9BGygKOagTLpcI=;
	h=To:Subject:From:Date:From;
	b=sKSvS2S0GZGbhSUqMyuEB5I5FBJpRH8fjmO7kUUSHgteKxBIX05O3/uoBtKKMp4YI
	 StPW42n/7BNEeSmlccvVjE19AUraXoShZbKpHOIiVB1sUP7ZwwMS3KGEA9of842AjJ
	 mtkG96830HQfOIWRl0Jp9sq0WNzjXQLnWuFlHuZQClPd9CJM+C2KNUYXh/aOpplm6I
	 NdqPnTTPKAHLiybVn1ScNwsPwfZlkJqGG2Vo4b0v/WJoS/82P0LMHdcHL/e5LQSEQi
	 n9/IfhMm9zUKINp15bcXO1jB9uuoDfILAxKRGzdXwuMcYlF4bKYiqspLqS7PxOS/Xl
	 UZrn58DlrpZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D42C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927599357.9139.1472220566043985239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b1670894e0775cda6e9e98e517d13066703b8a1053473278b24b101e041d37
Date: Sat, 07 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749275993
