Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6093D6463
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784272714; cv=none; b=NIaiyQ7SOMi6lXZ7s0M/LJFkzs1pavGtKbbuQQIz8j7oM9dr9JqRAZ+cEWEGvgOhN7QiouSwhYDzktnp/YkDw4kiC0mU+ZKDS4Zwa9xjma0P5pNvHFkhL6OShkHgrxjJkSdnhGVfz7Xeo+0n9v5s5yRyvkzx+OqMYX0Ax+tCd28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784272714; c=relaxed/simple;
	bh=2HYaLV/xyDOe/H+Q5LSy8wq3IG6kNq4xCYIroz69POQ=;
	h=To:Subject:From:Message-Id:Date; b=Yg4Tx6w5PwU9Cs277YMfly3uouQAH7u7udfzNmn2rAyx5DkQ7MtVUWqupbw0zB2qplZMetg7j+N7ALRw+aVWY3dojgsUBDb7W+SscO0g8qc+P0OAJ6akYmGkPP8+PZoMertNwFLkEzoz+z2OReeuuXq1T0gjKdLRW83dJN7Awwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfvoUs9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfvoUs9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADE4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784272713;
	bh=2HYaLV/xyDOe/H+Q5LSy8wq3IG6kNq4xCYIroz69POQ=;
	h=To:Subject:From:Date:From;
	b=cfvoUs9NCUMfcINZczJufqSEoJrDvMtIRIEJGKLJ4BYEgTn95JP6wXOeekBA3nCjc
	 5taEOEGeqCs7ORUwtYerQgTVGEzVwIE8BBHyWTXzKrJ2sIB1ayPsELGiKfzV35HRoH
	 FbxkNcp+TCmio6pqhKAr4HE3y8wCPqK31x5sL3XwDh36VK/fJ9gkZw7ka+Jb3SDIxE
	 fUTIHsm9hyFdGvtt1aH0MGzaVVTFARr1vDP5eAqpc6j+FTSy9er6zuBHWU5Y/YYS89
	 yd2zw+5wBAU7mV9w+6HbntFLLyWy32s0p2IMfQlYUylDquBWCjw8/lZgH0Oa0fPpHy
	 JuwP2tKg7oFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DC4C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427271368.9329.7499902726640068294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fa902742a08e687cb3afe4b39722008e17ab68f3603ead16bfa503fe1b8a79
Date: Fri, 17 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784272713
