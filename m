Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EE0257D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724486154; cv=none; b=nmGw20f/DnqFmSPFzxP8DADxDTaZhIgUVrc9zUJvIZz99+ewJ4NPCXfEci4SjdvjRNiVvF4gO2P3TNQv4qUjJIQcQ2pDMG4RuTvFv543Vm50rS8tP9AWAeUVa/yIaZTQhd7eSICxzOTtILbpe4F9r7zGdWJ+3+uiKS0vgEu+5ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724486154; c=relaxed/simple;
	bh=52nlyOB6gQFAzsQ8IXiLOyyPfkA69AbN6DZZPQui/NI=;
	h=To:Subject:From:Message-Id:Date; b=e7EhJLx+h4z8kx3e7KhBTRuVeQhDxiCxHQ+43uy9S0jvFPIfqn3c4KecgSzyLruNDcfVYQAWDag5gfkzOC5KHHBJpjnUiHb9cOxe4tyiCH3yHJfRjuHwemHcjXiBQaOzs3jX19YQ0WNxGu+5wN+RengrL8po2eLZryBGA/dtPUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0IINQYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0IINQYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F57C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724486153;
	bh=52nlyOB6gQFAzsQ8IXiLOyyPfkA69AbN6DZZPQui/NI=;
	h=To:Subject:From:Date:From;
	b=k0IINQYApbHijcFvKtvb+cBtMWpiSsjJh+6+3qBEsM+PxMVrM3oymItgbJVNoMdkH
	 jhrMNyRp0pEWAWZ6yZdLHgpKUx1aOehiD3LvosRUxslAHgE1YYtrgPbG2U9UdMa+zx
	 dRXntAAFYVL6YJDQhL9Oew0KDQd1UARZJZ1O+fbjyd05/BzTMHMQ0GcPRvGp6EgLsE
	 gY0fQJOhaEx4z4BZ4Y5TZ0ev5SVWIhlsvtii1VVZsnZ4wQqbnbUmOc/vPiKVJ4QIFO
	 mpy5OHDvrgibue8iIUGYE+pT5r8NdYSG4oFQuTJpmClVoKsJdsLlwKOxkcZs/WnnSB
	 MrRM7n9o5N1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1291C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448615363.32416.6384734422982667026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052487d3b6ebcfdca7f333711db78740e08441dd3a43438084c802ddfa974f06
Date: Sat, 24 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724486153
