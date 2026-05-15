Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B2038F957
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778827834; cv=none; b=hwRa6+1xKOTJRFuicaB9WGFfheh2XhtqRreVne3PZ34AjIS7/QZmdEqKD1ndfA7zDBLZnxFbLHjSrKFkEi408irL+hemqK/4TeBNsrqf0isAyjT8eAMJtuUjy0xpLn3KsJKhHdaDt4bNME2kyHqzMWDgADZEA6orZj/A6qVIwWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778827834; c=relaxed/simple;
	bh=wYgqEspsE4oK7LiBwRUTaZN/yygFcRZuLaOTJHXJzMI=;
	h=To:Subject:From:Message-Id:Date; b=RHKsJQhwcftW27IMza9aTm1N8Sk9e7phN44W3jB/IeI1xU9kLBbwVRsNnIxIgSaAf8tH2qLJ0+HKs4OrY1FuO1/LqBCe5LICVforVqBgtZ/bQtO5jwXgtASgmWwhes6QI/2BW9IBUxnrUrj3T/NLRDjVYE7b9JiZv8Bg6MGlZ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzIxHf7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzIxHf7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4B5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778827833;
	bh=wYgqEspsE4oK7LiBwRUTaZN/yygFcRZuLaOTJHXJzMI=;
	h=To:Subject:From:Date:From;
	b=gzIxHf7A3+Tlr/bw4F2h2hXm8RjowzKussgJu6CVepIZ9XAx1zxngxt7pew75y6md
	 2r2CNLVFZi97rVAJKg/neTmMTTrlrIzFx7TSj5yVLYx5UaX7oK7fwmb36mWy6+odO4
	 U7Qp3U3LLbfl8N7kZFebvzWQr+goozT+HozLTEF3WVbBrjSS/pH7xuFtRkiup+Yjrw
	 8ImpPD5zuU3VQt16D4ZjogeHIg9icMkDlENDMaKps9CfcpdgG5g9jyAYULlHtwLc0m
	 A3JKfk+lrjtS90wAotl0ByOjV5K+R54ykobwcPcJxe8i2p3Y3iG1hexl8rXr/B4Ow9
	 Wm58omE6kUB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB32CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882783369.23140.16620729880878456792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bdec397de64149f5710236923bde0327be126f1199ccff344b9cc0d7d8b526
Date: Fri, 15 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778827833
