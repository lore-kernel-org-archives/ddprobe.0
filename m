Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CD51465AE
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739098553; cv=none; b=Oxxz77181amgGV5vr8f0OUXp48cB5E6rqDgXdwoLSKUg3odems4hF0anhedRRwA4L44CTFOtMw4x8tFT4Rn/rh3XDdhpcsE6q98kiSo6acwPULTW5O9+qmWMCltkqdIVxBllVn1iyG00Jmj+6vBwakq0ZjiA6fnaIhpLj4W4NPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739098553; c=relaxed/simple;
	bh=K+E2QTSwq1N2kKZ9fGTwkXjlwCGtwXWNAHrrl73HIg8=;
	h=To:Subject:From:Message-Id:Date; b=ZBUW+SOSFtRB8K3anGj7neKV9UxBYhQilVsQB9dYeKkQWFu20hUfPnEcGgVcbU4aNM+I2+Fhn5uyzemB8VHjs0+iMxuGTsPCEnvJKYOW5dcuz+Dp9w0zMUAoSqLVDsA7mS6IpFwdTd/Ts0nMKK/GElh4uuLlTkmR9UIclAVn3YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc/e+odX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc/e+odX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2332C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739098553;
	bh=K+E2QTSwq1N2kKZ9fGTwkXjlwCGtwXWNAHrrl73HIg8=;
	h=To:Subject:From:Date:From;
	b=Oc/e+odXcCwW3mNuHckLhAqyRkfe/80nArp55Ltp6Bzd6yOG8F5Mh0pOExIJyfu+8
	 7Nt3LxG2yRlemWL3ghhLADVZu+5LKU1hBLpKP+DAUUzthipCWYWP9oXettTd8RnPeC
	 8us8EvZoZTB6z35Fd3Jvzj80mg0L3lrkEWl/YadmBN5xJYRZhu/k5NiBpEfmkN1Uwu
	 H0Wz4Uzvqav+Bkepqucc9rJ/NNYOzqbn9yv/jBa3ZCCJnGyG5BQVuhQH861wIVO15I
	 O0QIP/HDeVXxVn5eNym1BKbIzd5ZUHcds13vXTbhe+vCMrPavfyApPgftTwxKK497q
	 970mbgt/F2EIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7E5C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909855364.14580.798608146888099538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba9f464c2ba24b8dc7b0cdc0820d38f795bef4e1a405d7386f177d9a7b77e9b
Date: Sun, 09 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739098553
