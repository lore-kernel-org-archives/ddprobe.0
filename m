Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177E026281
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764259974; cv=none; b=DKDfZ0HOLuSZFSYNaMroxhudLIJdaNRYgXL5xm2Cx9irzktmh5azBo1lOiyeiv6/I1hFCq/ni6IXJx2T6pxg2kxO1rC1thM5uP5k2FNTiTMmpVUJQ4l7NjWbBxuWxy1lgTCIb/V6liAcLcS6YU9QqWWKDiWA8FhzK86o6jYR53Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764259974; c=relaxed/simple;
	bh=LFjbcg0vkycjcdIPMYzJAjbQq8o7H22HwuGEGFnhefg=;
	h=To:Subject:From:Message-Id:Date; b=qQUe2Mr1MatiryY0pqzipqnf60qhqKfzYucZdAMYPACoFO4t7KZ8xSTq7KRXIUE3XyGATP4nZQKN6aaneUY5EKO1ovgx7CTEu9dEs65b2b5562pkays+beJptd1l+nM61Uzpar6Qw2CWN2Cl9oklOLNDIXEDHdcHNyPMAV2Q0Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHG8CtHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHG8CtHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A79C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764259973;
	bh=LFjbcg0vkycjcdIPMYzJAjbQq8o7H22HwuGEGFnhefg=;
	h=To:Subject:From:Date:From;
	b=aHG8CtHHMtbJN3iACBkXHpR2mL0aoO4fbU+h3TVOLS0nxhJZTozMr7adC1HbdUPpQ
	 YxRyDw1nif5YlApL4c2D6eHVC8mUyXI0/gnvyJtvD5P1gfLeloc2+T3cEBz4aDlVKy
	 wOGSPC9hL0QFCW6GjIlN+fYL3EJJseRM1TyesSchsCd8F9yZJwKU9dCD+XQlEcJ5CD
	 ZH7BK8IZvlDcjtn/9YXDMObJUYXRf3JyfCS5EOOuQrM1kSjYOba/fpomFR9WasQrna
	 BZVw2vkL1m6S+x6nRko+AGGoN2CnMncJWTSVLt8LJCW0JJ7+E0EsW/TmpvChkxG3Ev
	 7JyZO6MKcnGUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DFCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425997358.19191.10820914343720480485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf29ad5afd250c33efff5d83055723e24d14748adc631d1e127429673d02af5
Date: Thu, 27 Nov 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764259973
