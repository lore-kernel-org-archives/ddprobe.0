Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5A25A63D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737089155; cv=none; b=i0PjHJm5sMV9rUK/VHUXgzQzV84U57lVNqWo2FbNNya9QtEcnvD3YHeNNwC3+VkLCG+oOw5iQ+uX6hhltSEN5UbwFm6xaK0k9zpWm5rzqeueK7nQ2H6Yz3MJNle/RjMsdiscam2tjj6i0ZUw8ZrdVQ1D/BfVCe9m/L2/h2y/edI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737089155; c=relaxed/simple;
	bh=sOe/wrN9cTfmFxGhAVNn8sK1egDtNnmsG5yeKumM4+o=;
	h=To:Subject:From:Message-Id:Date; b=awysrBY8sZvQtsi1ZZJPjl5yCZK3EhS7cmVArTanPya3ubjRI//dUhRpkK24IgHHcBgcw79vZrbDhTQu4BFAiG9OvIZz9zIWQXE8B8zITYkgAXOG/6W0wHHaKNGOBNUdcRiPxOpHfTGvW98tQLRIjzWYgr9d57jbuLev5Yiid90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMBbJ53w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMBbJ53w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE826C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737089153;
	bh=sOe/wrN9cTfmFxGhAVNn8sK1egDtNnmsG5yeKumM4+o=;
	h=To:Subject:From:Date:From;
	b=aMBbJ53wfJlynwh3UzlZ7swMQnKgasZPwDGSY5ogVkSocVYpmDaICheqJ8MsmK6Ua
	 yOsLyXzcVsvSDhTXrW6AIBR8YFLvK8tApm2F0XlCgzwtvsp5dJA0ekKIayENgOb8Wh
	 Co8Ukt91xD5TALNTUWZgno52YZ1+uuxMfzaggO0MTikH/wkYlydc04CHguOOq+0I3G
	 rVHEDlxEEQJAHKlVGptOkRrqxwkh/CfFaoUoVAzKqZHnmHKDIBKod/EWZ2690mSyMb
	 szpR9I7eCB4PvUgv5dDqmvJzpQFMErzLOXBEfGPJAw2YlHwHYfWXbGislHbajcvBXt
	 S8zhR0Jtd7zwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3AC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708915358.27252.2317996270834866041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56d00245da721d90bd5fb0e111b929ca961049f37520c574650c69877cb8376
Date: Fri, 17 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737089153
