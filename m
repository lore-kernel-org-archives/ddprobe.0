Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE0C2100
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790C3C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670313654;
	bh=LzJEYk4pCN1S428EYz4+xkpHy9ZAGSy4ncfuYm4nhgQ=;
	h=To:Subject:From:Date:From;
	b=eSLj9AsYc0y+uPIIiAhDjJHTItiHrqhfWASDYM+XCGYcsbng4YCGueAEuLEWCqSiB
	 Z84w/JSQzZ4EpBhjIn1ofw3ydrSdFQPlDKchiiCbCMFsGYKXM290PAsrRMkiQcM4Ul
	 pfjHEbApiOBtqPcobWO0lAXXtl1W5Wv/7v1QwfvCinhAjjtHYzw6rA1JqAnXZ7FxbN
	 PxKxFoN4xiqU/wQetFfgk3KQHr5J+peScxEvRM8fA2gA3UYbz2JIsOylQBW9VqrVPd
	 phjC8S4zBqGWKsGpozuhfHCcTNk9lkXVbGxU3fUeeFXlSgVQMNpjVNHHrA67+XGqf+
	 1izvRFtVnD2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADCCC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031365436.12649.2137534195536012360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ffcbdd80f9c02a8fbe2ace0cf6c2b73593e6008d786803806114f35d3d4fca
Date: Tue, 06 Dec 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670313654
