Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9932F3C37
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782596914; cv=none; b=VSKgLm7PeUlBZooZ7Mz4h4QM8dZ2Y4eTMq791RQjLVorpOiWMkTOS9WguEc5a+uIZYIiVM8aPs/jvmDHwX1Ad06HHbd7XskKkcFl/AhUEvAAzas67OW9bJ7t7d8PD5pUHk9E0/mK4491z8AXAHaBCZtCM/FBOJpJlrpR1mfNwUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782596914; c=relaxed/simple;
	bh=Xjnq5w/iUUawte1ptk3o4Q8oPfDsPxaSAglULwzXlho=;
	h=To:Subject:From:Message-Id:Date; b=ohi1PpF0lJodpav17yR11j42oN2LEi8SIdINsokqbgKW620AgbFntP3PAXg9UYamebUrVUksy8CZa8OeAC+/d/mKc5QvsapsUPoMf1N48QwdS8wxv09NG554HD+uOa0Z3km0qPBT1iCfJ+fS8JrXJNGvYP+bS/2sXvrrCZKIgCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4JWx+Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4JWx+Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782596913;
	bh=Xjnq5w/iUUawte1ptk3o4Q8oPfDsPxaSAglULwzXlho=;
	h=To:Subject:From:Date:From;
	b=Y4JWx+Ghm1nU1e2BdE3TADdHj8b8VD8cMrB5UdC+Gacu2h7yZmSqh9HY1cSwDGe2V
	 FpO9o71IKck20VDEqxkZhvRrqd8sGBZJ6lt0NHchQG4+4iqIy27ap6u5YmdYQjtEC+
	 3w0DpHRJIWRewe2kXMgB7WvOj8SRGi6Br++IObg2hPfjvCTvSwIiSi56f3Q5xCC1rg
	 g9eS5Bjt29kE+dQ0+KJr2+SwhZUhuo9Ifihk+HakADwPvZJ9tYlbg6aBjHmshZ2hMy
	 htkk/Ekuk3jDcO0yG7n5b1tGa0yLS3zBc3R0CmAda/2jplNwE/i2rdcbAo4cHxOrxO
	 4Zyo/ySTn2hCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C5C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259691369.14101.4583405595350123784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04911bb126540450431a6b720ec2a4284a9e3991c9da04269a782a8c754ab723
Date: Sat, 27 Jun 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782596913
