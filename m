Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B483311C2F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780036954; cv=none; b=KKi4CWYeAgfijZoxDxXNs7nVwWk0kZVp1GFo86/7IV2ffGVkPVcE5LS7CZUCr5qubT2kaXgCgULPbfsk6mh+gTbWv9ccYiEsbhHx++K9wm3FQcnaEX0hscsCci+d4jubFxIQA/6NXoVg9Wy2liQawCL4mvCSOAzbZlqJZi/FowM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780036954; c=relaxed/simple;
	bh=ytcU6pUNRXX6z6PwBBSgnTzpz1/KCx+yL3RKs01Q2qA=;
	h=To:Subject:From:Message-Id:Date; b=lf59nca6tlICysXPIoddX6n9P+7GiHVJJkASpYPQkMFJLiP4BNlbvL/FaQtUDRA22wKdXODS/Mjpk4Fxiyj7W8cfCpncQft8Yvpj9N8X26axi6JF16hKHJM8LY+j4jvlRP9vrK671j+JaPNG4Gn6MY5xhP6E5mZNKcoafbJd/Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7KE0FQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7KE0FQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C277AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780036953;
	bh=ytcU6pUNRXX6z6PwBBSgnTzpz1/KCx+yL3RKs01Q2qA=;
	h=To:Subject:From:Date:From;
	b=M7KE0FQ+q2rid67+TiuosAgBKo+Wo7H5qOCgWEavqtSy2cqFwxCcgh/X9A6WXxR/2
	 WMgIflwAPoVS2sT9lJ70d0klwTwamHMgTw4EX7WkXOZL+rdOacdeKkbqO6SvUmQsi1
	 UQrrOtsD4IE3iMqJinfTkAlCFTVakykKyrNM4bYQAPI0ZsN6vEdliLWuwLFEdwmQlo
	 bNv0qkkf5BCfjMMBHLEOW9BnLpjZiDoq/xKXjqbP0+nvL75dV0jWBqaZXSehuBZrQ2
	 vXFNi6vCPW+VrEG1oL7d/JyKkXyLYO6tiLiPhnNghW8PNJsYLS9HsQ/82dOz9DhHrw
	 3kA/+JTmTdn/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9327CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003695368.14656.5720869076965037571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ce29a66910aa8f343623027bd62dd955787f91a34b1a146345e069724084fb
Date: Fri, 29 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780036953
