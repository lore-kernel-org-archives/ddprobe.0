Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F796320F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754614794; cv=none; b=jWAFBYgZDWFw1NpucLPLNewmAWeE29ArKIqnMlX/XrIZy5lJCNMstu1MMleqrfPXk8FwzR2ADLx7cfWFa2tAd+ib3cCJbg9gorXrZOb43vd3Hix6O6EArkAnKWUfUwOif6fmC55Lpf4licquVn1XNs7JIn1XcGXPSQTODCz11RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754614794; c=relaxed/simple;
	bh=tbjhUXhgpMMxv+EpbNCbLNmOAnb47wcNlHwvVHh3Ylc=;
	h=To:Subject:From:Message-Id:Date; b=T9T/wFnP58lngFPTrAnAvwSiX1auJZUMK9OQLbEN9Gm6Ja3/iJFJk2ObmrgJBPPPNcb0oCpEWWsY2iB+hp7ZuheypAIx4fOaCeP/hlD0g2tzxEq0cHYuHBMV8ilDAdhc6eCAN0rdhmfYk/FHnTGSgySFuKIpffu8U6hdyphQVbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyEEK6lD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyEEK6lD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F32C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754614793;
	bh=tbjhUXhgpMMxv+EpbNCbLNmOAnb47wcNlHwvVHh3Ylc=;
	h=To:Subject:From:Date:From;
	b=jyEEK6lDdJ3SnFYS4FOdcixO49rW/MlLbemXQb+AkLCxheHB0qzXgR5arBh+5jmAj
	 LrS3VQaUu6QyBiY9klZblblNzl9URNGiHoLR36oI0A/pWZjh7DqKJugu09kRfelnX6
	 9HcZ0ViCch4rfT9R8bVAruDQB9EfpCALafMZ7N0eKV37naN01cI6A1gL7Imzpd3Sh2
	 DWZviQ+6ANhaZRs16hn4eGmnb+nTBKSHZsYvswolFhFA9x6Ugh8K4pEr56GDhTkzBn
	 c4J7M6JYRWa2rR6flMZxVsXqn8RTtMMS9khDEM6lffBM/PhoIQUwVZTfBwA3LliPVu
	 cQ3bjeXgrocyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD7C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461479357.26401.13260318888891896819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279a5830e610f258507d18b8564b0787b3f6b3cb4512bdbd258ac10e6f109a33
Date: Fri, 08 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754614793
