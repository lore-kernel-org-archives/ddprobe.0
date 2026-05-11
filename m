Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291163BBA09
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778491234; cv=none; b=HWoOH2uElLiIUuQaLa8cZFlxhmErh3BRIRcN9kB7XltWyaZqcPg1VSDS3EPluteK7lx2QctQWC4EE5c0kKjM4zTdaFi9lvLm63PmCLOXtAxuAXDh7gF3EUVYUlYNF2+ssOUlq7vE0gqaPV5CN6Qwq/K2QdkqlNsgUCsL4cvmOLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778491234; c=relaxed/simple;
	bh=f/yMxalRDJlEb2YB7U7y12nhO/o+lG/L4EMVGUyyXno=;
	h=To:Subject:From:Message-Id:Date; b=fziuKlNCxouerSPO2zO6o+WxVo7lyinvenGaFVgvpt7zVVHHjJkvOUi8mGlkyHKDqrS9exaof3u4q0aSSBNwjHTaDQ3w3VxkJJ1EkV5WcapShLzWnOF8aPyPl72TnM5buRqv9JCe6p3O7hXqJI6FgrZlkG5f3N8pkjhSh8Iot+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+RIqSCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+RIqSCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6A4C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778491233;
	bh=f/yMxalRDJlEb2YB7U7y12nhO/o+lG/L4EMVGUyyXno=;
	h=To:Subject:From:Date:From;
	b=Y+RIqSCYtajsv+6l/7hFQHfm33cjVKKLMgRJTjtnCBa/jHp5C+mVsNzJMN0RXhTvB
	 eLcQljGp6zNDzdmvqSN67D+6zXI1mwChrlM9gY60HwMA/khDRyVz1Vpxy20LV/NdOp
	 web+10GeHaR4/K1NVRnf6Wpt6kGNjCq6RyTp5447qCQMQqSQYyyRz0DD1VBwkUvuQr
	 kRyWG151yB2gZuMSHUGYfkV0C1HKf97s9vTKygxb4ai15PdaEzMqbthf+nCCtzKQAb
	 UC8jIY7KF4rudhmaMxO4caZZ1pot+yBUbBtvE+QrD6Gw9XDsVUCgCrcNva/hXJJQvI
	 /zYdO5T8rlz/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE999CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849123370.16926.16997586949665357973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471eeea83913a4429cc4eabc5b9fe8dacb8176edd9bbb651eb8879ffda7911b6
Date: Mon, 11 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778491233
