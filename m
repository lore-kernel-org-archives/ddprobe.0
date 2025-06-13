Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B5B222596
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749781794; cv=none; b=fIx1ZkY2jB6u3hoitX8xZ9AR+PuN+XEhLZnW83LG3PmlWrNn5eSiWkJlm+zMcRYXXnEPJ7pYsfxsur6XzptBJMBomZgDvZOVXAtmm+fEV1r10NYfOCr4fQULeSsXVrppg1NJummQbmdEIp/5+gj5D1+QNDf2otqVyrgVW2F3t00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749781794; c=relaxed/simple;
	bh=Y/gRjcVNYtIR+q7JOF2wFZtLjM6+xFRYH1kDhTMK0ec=;
	h=To:Subject:From:Message-Id:Date; b=guCr8ipXnACZahh+lOO2Zqy8YqU4JbhpP9dIenoXR3VZ+0mLCYTPiRAf9pGXMVyMVQO05YFWIqsMs/CPlE+PZZloUUuWfPfEurIDlQTV9kDZzlvZDyKwWzk7gUuvv5CUwdQkRTRNtTTWqFnJqx4dpz1B3W0LFKYIJJiEanKrKmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMnkqTAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMnkqTAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8171C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749781793;
	bh=Y/gRjcVNYtIR+q7JOF2wFZtLjM6+xFRYH1kDhTMK0ec=;
	h=To:Subject:From:Date:From;
	b=ZMnkqTAzbNT0kVwZjrcy2tu6lo9csDhi1wzeY1YMBKl9DC97+W+Jb64rPhFUWftLP
	 TNtk11uGrQu59ivqgQ+bYJrxg3ygXXcglJjKrdauwMjZgsxmd77Y/pBAnK03rOaCN+
	 r6PUfHrFQh1J3y9WMPcU9FpYhYbLnbDVXV8kWKed0fuE+6AU3pXbytp5PnT8ogdoOL
	 ocyb5HqAkImLygHqj1GJmqEpclvbmcz1oxiRwEK/kBxBqXLCWECemOZe6ymAYGl1QB
	 A1hcxoh4XVPOA7ddnkm9JSD9stvgArEeofImUWRtoHVlG2fu8JGc/CWchIrdWnccwo
	 50T5r9ytTJ4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93042C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978179359.7032.14704514542087867437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d378297e4fe263c8b438cf64f99272e9a7cf315c84b8d103b7b08a565e4b1a76
Date: Fri, 13 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749781793
