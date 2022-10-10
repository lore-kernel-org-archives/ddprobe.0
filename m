Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B572C23C0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A4A4C433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665393653;
	bh=nT482XZ1w4qTgLlI7KpZIpPYoqzT+EpoaBKVUZlJXYI=;
	h=To:Subject:From:Date:From;
	b=dhtdSm3IWJVv206zFVcoEPm74kAc5ff9QfyBA9nCO/UJJgbO+lwSTQ1jfzVwLTL1h
	 AsRLzDvD0rJseeJ01M1TSESllrPrBAts2m9FxEHoDzo3MXWqkwTZyxgjVbsVzwnhJo
	 APO9BwiZZa48cIzcNUfuTcSUaFLGCEEGYb9IopA7nhIrhMkQnreH8idBX/uamhajHT
	 R6ZBtGCusJMSfQw5iSJLAwUpcSareDdmEkJp9TYBGXKCXg5OKvgplCUDvRTuVru5zD
	 ZnGCuo39sd3FFIpius4ieAJljZxS37X3xVIJGMyld7GNDBHKG65or/Bfv1zxVVh3hp
	 6ZwwANuXnmo8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50950C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539365332.1495.3188902223964760737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfd635ecdb3261b2da05606a3fa25cfc6189c46057d4df2fb63de6af22015b5
Date: Mon, 10 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665393653
