Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC219279DB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762321794; cv=none; b=jgdPAPE2+zrPMThTRmufDFa5Lr9vPGfUX3QwoCfTSd0MF2kZK2anwHpQvglqSllJ7H3hFbNx7W9dxoaPYpLeEIqVZkUHItoCNkOpZfpgps+CNBSSjv0nPCe36uQrQGRIcOWnnnBZK8eGVgcyws53CvN24mZmaCiP9h+oCXIEptI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762321794; c=relaxed/simple;
	bh=3qbv+p8lJ0agvB798b7QqNCPPxFO9UiuippstXoVYAQ=;
	h=To:Subject:From:Message-Id:Date; b=laSG0e11XKDySxSuhixN9pRXB01pPv3i420Cfi9HrDLDivDl/A7hD4uipHM+6LQ/augO0TqymSdTsg0NvVYpmS5sN39Gz5VLw1voupKbVJMT9FmlZ7Oz1I+UwDnHIXiVYp+8Rg3fbDOWy89JIq7TdQnnMv8bqgEyP4WTVOUVjQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQABlKKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQABlKKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D79EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762321793;
	bh=3qbv+p8lJ0agvB798b7QqNCPPxFO9UiuippstXoVYAQ=;
	h=To:Subject:From:Date:From;
	b=rQABlKKcwFVozGT9Aj0b0agfVulvoog9pjKlJ5+Pl+2m+hUiKoLMnCiuH913J59ye
	 xn2dH45oqJRulh3bEYYHIyGHiCAUbX/D+CHInyyDYLYhIiOQN9g5gCAQQZbmStkJbe
	 CZ1dSIZbqql5B5B0VE9KlkM5V+EdehVLtJ3MmeyQ7xdMR5LAHKnCR2shxG21VdGbFI
	 ub+Nkd+qhOME7ZZvZDISpJor3sCkBN+fNR16+ItB4TkNwNEwhQ1/eIM5hdLZ8mZZPv
	 Kcv2tDZnO3YthEvpT5+WLgKjtG0x8Ib4kjSceOZmJZ/OiyWXJEjJC3Xxl3qLkGKbRf
	 jrQdlrFHUrOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4ACCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232179357.26273.10885696608188379234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e13819873991511229b6685059187d6d77932dcb7e7a38939329daff38b94f
Date: Wed, 05 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762321793
