Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F44C1FB0
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdbxgwC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95544C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697774896;
	bh=ojOQTLqONjm5ZU0EAuWx5FYSMJXgbFsnumDbgggDlqE=;
	h=To:Subject:From:Date:From;
	b=XdbxgwC5iHYnBtTmKmJK4cKTA30zjPmbhk6Jk67BR5D9k9fLLtF35hFriJx/avUim
	 MVyFZ8VM9k6z5DAxTGudtf4sZ+XAxGUHIo7/IUzguYaHrD/E1HCXWZzl/kTxo2Bwxe
	 jrBqZFBBclcE2H5UNZmTbB6VYeQspt80RPldjM1XwBKEDbb07o4xQx2K/u+e/nfvN3
	 RCvgu7QUrJ+9FgnOh4FKfIxdP3w1rNWvlZwGq6CwI9JN48uHtnmtJZuXZmiVIENAGV
	 LkOuktZLklZ+w+lPDsb5vaJRdzQng/e4//160WXuI3gldFVdA7S/PKFMRZSKeTgLT5
	 P5xNSSrp0lrCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCCCCDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169777489642.4176.3232930462357218310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be9404ef56cd52a4057f209612836e991c2f47eb85f0718f7709fc9a3d20e80
Date: Fri, 20 Oct 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697774896
