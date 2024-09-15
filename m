Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567111EB35
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726437954; cv=none; b=OAbr59B34mQhnqKtPLeebYTXGzLST3UHBynthBZhpTclGdY3xNlYlU9VZWTiAa39Wvc+QaLxn4w8c2Zr5uPcboE8KYqHhXfd6irL9Ikn2g8+aJE0sAglZZrvjAqieOOhJZULO3CdmX4UvEvKwSiCi6weZWIViF0FFZ0UvFJywbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726437954; c=relaxed/simple;
	bh=70D5IczQ56v6MbEn0lK5+luEEwC4LY4otk9C/uK9/4Q=;
	h=To:Subject:From:Message-Id:Date; b=uXs9KfP7n22n3h/feD3rOBmx7XdafIdZvVKM6sau2YP5kseEQJ5heKtKXM9j7PY3RgysQM70mFnKL9x3FvRolTzghmc0a7IfuvFl8rFr66152tCzC/b9lXqVlvUrGe0tGHKU3Do+6XdKm/Nr8QGC4DDjQ73GyC4pY5+7BXLc7bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J73hYUKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J73hYUKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA192C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726437953;
	bh=70D5IczQ56v6MbEn0lK5+luEEwC4LY4otk9C/uK9/4Q=;
	h=To:Subject:From:Date:From;
	b=J73hYUKsYJc30RAt8A1A2sXZKSttSojOnFo6gEQjKMPNmxrq+CRzhueV8V4M8A5Y3
	 Xplu4e5f5vS/jh6lx3F91vfZNZEOGlnWVQNVLX1ivhw+wTxZg4Y0igaNMUwsTlBycI
	 68wJ0R0GUvLQnxL4VOyUSqSxUHsh4VZFe9f9PpOjXFSM0p798IUkw1xqVCrL4XGgy3
	 D4AZQCUhMAOw9AJcRCJ2IvzRPwlz3vjDUb910sbkicaEqOuFykn7kZ9c6nj9by0Kfz
	 4shy+vJNDSuuqMU/BBET2kV/aYnBXoTJi8/6eRmN+E9D7TQej29V0Ni7502fKGpHUR
	 YVmd7Y8784e2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDD4C3ABAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643795361.10770.4500192292669144504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183add3c6c391237218807804e58b160eb859b45771e955cc265d7519baf9327
Date: Sun, 15 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726437953
