Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC01826AEC
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721469353; cv=none; b=m2HFQ9ySJ7YcIqGGueOP22AwB6pirtrGsamND3vFnLFU0YELM0M8Pb5R7/TxmtdWyQpws+J4Z9yyNzPJvx580rVG2tmweYflsHOANCE2G5Fhv1HxgRvgKiH0gjVCg2XM0LFrPeBGtvGWWdcGXbxcaWcyO/Nb7CKez7PZfpS7AnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721469353; c=relaxed/simple;
	bh=ZOqWHu9YwHUYW8JtvHbZSKuZRr4Wj29950ODX2UHmiA=;
	h=To:Subject:From:Message-Id:Date; b=jMNZ9uKgKAz6jr/F8simm3WH06YVJW4SZmNEQHKqQ8qhsDB9FvTumDEBFFwXo2q/LB1EQC56CzV2WRuHNe/E3MwIEBc72osfyWcK/KW71LjrpKn/F+7GLk8O0TGZakigPgZTAqfnTF5zNopdVFsy/RhH/TcqFgv7eDcT8EM0gUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb4sZk1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb4sZk1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9983C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721469353;
	bh=ZOqWHu9YwHUYW8JtvHbZSKuZRr4Wj29950ODX2UHmiA=;
	h=To:Subject:From:Date:From;
	b=lb4sZk1GkR/pldQR0CJc1KUSRwDVqNITU7gtCDvUx9gP5exwm5Z3NnrGGui1+Napk
	 YqmGxRGADGn0p2DB25iVZ8mlS4Vl9zHwd4VRz5h22Teji6aKGFGhFaFyW4/Bj7bRDq
	 ZmBq84kaSZ4IzXyn8cjQI5SXOC2/21cIjLEKVYAs4QOQrhtec12AbQXucQ1tJbsYsP
	 GsmkACz+tswIzYtqURQIzD92C34WrMpKSQBqTfNN1snlhVpvbS4oZ6bEsDI+rgFgku
	 CjqquPuNEHniWxbwCa5v43hKmMkWjx95fVCWfbpoxqJx+WkVfnfoQK/DsXbIAjxHyI
	 na8YM9pP75pDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95537C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146935360.31045.5218143369051101064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d496db9701d7b4ee6bd356d0614987808ab62e53b2361497a6ed7d92a81af49
Date: Sat, 20 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721469353
