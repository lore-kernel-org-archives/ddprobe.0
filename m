Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185F1CDFCA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755969594; cv=none; b=OGXZJKjhJn7q+Gry5/xJobBDPBBS7fw9N38/HRkcvbAvm1zj/JYa3iASPxUJUdEbk8nDNGx4QFahG3wROmTo8CFGTE6/ssMLmcF36sNOYtIaLK93//mKk6v48qu0kHKJ8aWpdgBk2zZ7cu3UxhoNWXjO5PX4o9gfUBvoiccghsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755969594; c=relaxed/simple;
	bh=EzbB1wMQlKOuBntQncoTMlsaOvLr5+qVDUTmEp5qCxU=;
	h=To:Subject:From:Message-Id:Date; b=aJPNMnaOT383HDxDAFiqhbIRWdEKlUwL67cqBwRj7t2bAYFXZV6kxr1qX93d1p5qTN7bhHkwq/G7UCdQIpL1+xjTxkb0L51mhaMBqgQKVC39XvhCGWQ3t6CqdPT4x5m4/NvdzMGI6AjTmBc9ulw+BWqWjXg9pfk87WmxgxuWlu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msWS8E9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msWS8E9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4572C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755969593;
	bh=EzbB1wMQlKOuBntQncoTMlsaOvLr5+qVDUTmEp5qCxU=;
	h=To:Subject:From:Date:From;
	b=msWS8E9AsWhqoZHMouQVmo4L7tmXXt+Bt/WJbxR2j4lY/Y9JA0qRX/VjjxPaFIU4+
	 /T8f8eqAur1wAtIPOjVIutz9s/P24ldHbafaJ5lz4ax3xoYH1jP1ohSEqMI8209Xwe
	 Vq0DVNVcspPBzHGi2iJdx3xXGwsDI991jciBuSKg6h5hV1snEmN6f3B7cCiNv4oZO+
	 ONo6qJvX7EExODkkVOzB7cZVblYVdjO6stZSagnKj1+Ovc5Uir9uqk9LPoFDtOaELA
	 Cijz5mwkPe3wyL4nF0j1WDX8T5l3wWZ7zJgfzRTy/1GqYF671QU7+sYGd1rsgo+RQt
	 ZVRrsBgysjntg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B12CA0FE1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596959357.32136.18077451846499729835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746a768591d772aeae321631965f991c10a525fd255e4595d57a60373efd5fbc
Date: Sat, 23 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755969593
