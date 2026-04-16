Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3E6389471
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776324454; cv=none; b=MxdhiRruxJvCloE+Gs4EaaKXCHhHknSr0wWF4gxq1yDahRONz+JX/3KbVXn96LOqvmYwqQLbBC+GxyviNP7rUr+8WlQZPsvIhH/BuE1oUSd19UF6R6ZlNo8XGUpGYOiV81zsZWs65iXcen0H3jA98xla4gnZvpIgMfr8FFOzPZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776324454; c=relaxed/simple;
	bh=GGefWmcsHnrPRcU/g0yHCY8+Mpv1KQF9VCVWIeAWN9w=;
	h=To:Subject:From:Message-Id:Date; b=L96AFSURB51vFYuwX2lSbnDUwoBV6MRkPuO+3GgdyQjPQjh4OB0ha2Tc/LDUccz0D+x2xpV25mX5xfAeBVTPLhsurYkF5gyklpaliWh0/+At4/9Rsan2EHc0tGP2Hu9WYs3QstomUGL0Mmj6JFxncQ4foY1+4uL8VwiOPuFAeAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4fHRcSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4fHRcSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BB2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776324453;
	bh=GGefWmcsHnrPRcU/g0yHCY8+Mpv1KQF9VCVWIeAWN9w=;
	h=To:Subject:From:Date:From;
	b=S4fHRcShnn9HkZvnDZH/lMPwhYueMGc6nFiz1ZdwBxG7daS/pMLsxSrpXY3TBWnCt
	 VUEnbwgP8JGSDTrIzq8Nj+uNIQczrapWHwhuP13/VjDgf7IpnrvKVu3DVMzIyNpmdk
	 K7+sVHcPzaosGI4Ils0MybtoHKLGQngtpqK4Mrr/Iapef498S5bjccp8dky2rGzKQK
	 quEMuW4Axyj+qh4dAy247rlEWxyU4EcSKpDxlcKijpe5visKqp/1AaVNmjQnAQMLIa
	 r4xyql3wSYbNSmRcH3QsNhEMq1mthM+Z/iUg+Dq97JAbm053rQUlbU0/MRmv0LG8Gq
	 RyyzFRLLx+PAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF52CF433FE
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632445370.27826.579834466110590116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720b92f76b1934e45418ca8230754566f43a2cdbb48214f3c1c17e00e773c624
Date: Thu, 16 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776324453
