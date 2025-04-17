Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC4A1DDA17
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744864795; cv=none; b=cyACSYN7B7c8sL5JId2ya7Hp0GoSoRAyrpUDqAA1A//sS0BoZzgf5l5vUm8Lawvji4G9UJ0NNxI9fGwLu9KnK7yjzFnCoR4vt/BQ2JtW6f2e8KMT7rF1IAUWtFnsvQRpaeZBh7uW8icgX2O2NFQKr33DePCyVn2VCO7rkvkQcWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744864795; c=relaxed/simple;
	bh=SCa62l09Wn+uvZrqD9u3e9M4/qssTse4GI8kVe9Kj9Y=;
	h=To:Subject:From:Message-Id:Date; b=SvwIHcTQESPWoA0UzyrkgWlh4CQdwT93uizBP2O0B/GKEoVuWmgMzv3C7wdGsZNPKV74KE2xyqnDzAdysUmjwwwSBasTl/nyqWILFPT334IUy/bfdkDsKLQPHyUSFgqMEeN4sX+sp9UU644YkFhuyAMLMggbCnpqeduoM54IoXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0UQV9yK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0UQV9yK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FDAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744864793;
	bh=SCa62l09Wn+uvZrqD9u3e9M4/qssTse4GI8kVe9Kj9Y=;
	h=To:Subject:From:Date:From;
	b=S0UQV9yKgMSlb0hDrTX9m23IID4bZTFjtE/Zn4c8UMOe75aZVabYj0M3U956xUA8G
	 UjTqTLiH8p2MJT/7Z6TikNVSt/LnKGqg9zTmauFbD2MROcP0RUVeOjaDIONH0M4FlU
	 7D0DETZjREQZ8uU5uzjUsfWAFjryzvaOkd14evZbuYUKg0iB60/PbV9QrMzO7RTJuo
	 13QNUVBxfX03alLPwIZH2Wvady/G76Krv6NcOJwt3fVOlPdxOf3GRu8GfKskzbNxYh
	 yLX5xlC7MLUJW29LRybIaw4CKNX5i3VAUdFmMt4PRZVEqudc5IlQA0jvhPV+acqKZU
	 cGhWvHtDvSsZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEA3C369C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486479369.20352.8013524996711827848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf57ddf596ff13fffc44fe820d42c827010efc12a3d9abf7271a495c90df692
Date: Thu, 17 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744864793
