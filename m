Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F82F18B0A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763950914; cv=none; b=ZNz1xl1Yzg1cpGhiVqTK60qKcg/Fb97LpfQGBkseVRntr1DblM4Q6mX+bELz8y1FpLu0h9C+lsc+fTFOXWdBvQkLp3wlwvFLl8izNSaLLxo6jLs8YEKKei7ofoiWlEk4/z4hm5WjWX8qChU4e00RBwp6/UGRZj1Dw+Ub2HMt6qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763950914; c=relaxed/simple;
	bh=c+ElLyBb19WZLNS0cEkNX73hs/9tfzftZMTIYH9ifQs=;
	h=To:Subject:From:Message-Id:Date; b=QXnTUT6GPXPs1WB/+NRGLIK92jF0cRQrN+P0S8mB87K4LTW4NHPeoYvD+48dKmyDBtBxVSl7YIQOKFI+rJuK+HwAEBLKckBwJIUc2B20462B6HE1dHP9/9/UuPUTvwv9neP4JVplxutlrgPg45260X/EBLdbFgGXNvhW8axzK/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMPgZLwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMPgZLwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81CC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763950913;
	bh=c+ElLyBb19WZLNS0cEkNX73hs/9tfzftZMTIYH9ifQs=;
	h=To:Subject:From:Date:From;
	b=AMPgZLwqOmRaUPBsDgfUS/LISvPa+zKK94lHhPQW5I3JYdnDz6P/e52xHcHTNQUNc
	 c9XzVuOXYpAnToENdEJg2S+4ilAoqvZ7hPD6r6Oxgfe0cThwN3YEOuKUvE9KuGI9q3
	 7ym9JcnQugfE0d04wxa0QQK2ONEHnT/MzqXTb7CzID0uGZYdjua21yxiT7jJj8z7Mi
	 1P+oNhlJkeTRiZd872RN0M6ygFwxB+97nxv2BVOUBOVEv2oSGlVmSpovh1qeEmSblB
	 JIWo83emQHmFF6PncZxBlRiIdrGi4IJJGqXhE10ocBG60mWNEfADxCB8KGx6ZJp3sh
	 vM+HO7DpMqiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E3CFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395091358.18294.7279209549709806622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ab07f1af886bce42213c4713dba02a7514590ee905b3280965ac4f714669dc
Date: Mon, 24 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763950913
