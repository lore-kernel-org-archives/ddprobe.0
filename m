Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333381C1723
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724772954; cv=none; b=WEZeWh+NUvZYwNu6QdH+7cVXjX8p28T2Mg13AlIln/7LDaGfo1xSyavITXmCqVx4u6hCDX9gHKhCIJDHCHyCv2hl5bbujTmCX5lfdKFxA9Nx5CeqDTONe6ceJm6VhP31RmYJPFjnvueJe25GKoU/bLV952GsnAhIL46mmND8CKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724772954; c=relaxed/simple;
	bh=kETbVXCZ8tHlbbv/SbPLUjD4ZXuM4tojIKf/aApuQPI=;
	h=To:Subject:From:Message-Id:Date; b=BL6rjG2+IIhJRxa1ysMZT56+5QDm518v156K4jFJlIrVYnAAUiQYCRkhXtnYRvRAkwyLvKsdDRTvkf1X3Wzhxuq9iE8+kzjSm+rkdg2uwXlWQQWhRZIku4bOcwYf5Mix5hHqc8wayVTUHvSO8gWqt4WMQNSyvcQrWRBzThKBkGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zia+Mu4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zia+Mu4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FD4C6105F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724772953;
	bh=kETbVXCZ8tHlbbv/SbPLUjD4ZXuM4tojIKf/aApuQPI=;
	h=To:Subject:From:Date:From;
	b=Zia+Mu4vhI993dCeFPz4qs+McIir/0jRdj5XzOOf6ikX3Vkk6KIptoK8d8pp9Oy3V
	 nraBbAbIKPBUWLql2kgOn6tA6TUvFMkhjDFmFjmuh5Y2x73QVKRpvvhvfMbbdsD0/N
	 0yulat9SqguUOJdX2JLMhOkGyRuQPuceJtvtRvCVYRf4aCA2qjpA6uT4JoagehQh9A
	 wZzJjn9PhlRL0j5R3GDy88UyajuJu8DKy4kfeef8XoFto8mWdk6hxIsJw4eBDmOvFn
	 0Q1M94ok0Ezw54N/z2pgMrBa1qBPVggXF6pLMG7QMvq5CdB8XGnJSziP75YxqEdc8A
	 8rQBaNh7oxK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D449C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477295363.31981.17332244140976883428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a254363fa0952f487d225240dd164cfa38ee64f5074c5606274e516ebb3ca40e
Date: Tue, 27 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724772953
