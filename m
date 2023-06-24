Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E4F18D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A5FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687565588;
	bh=9APDJxZ94G6UjDwjkQnjj84ZgQD2EP9pitv+CgAiy/I=;
	h=To:Subject:From:Date:From;
	b=mwkPd5HjTxvF59CNiCVfmFRXQzef2Ewu7v55gXuEpBAUTaXR9TBAQ+f5kSg2WWno6
	 GLLaYK4vlXljn/sn6wAqHReHKj+JmjWfI9E8iKnmmdL6bVDez6DPcWwfymaXm4rCCW
	 TUy5lOwlxJE36sekXKOL8kbunW2xRN08uILfX/0nQIhqJvB0lU2qmea4qCYIJ9RL+J
	 +SeAvm37i2f+lZEzEsJf+NMvPx8TQ6uIRMub4TtVU77UnPTXNfYHkgBhPLWok7W95W
	 +CrUxkLDR89lkAPBO4sgJpxqSSuZ/iVDZHGSXoj7U5wsuUx/PMiMXg+9SWM7d8y4ke
	 W8UgJNe9wedSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBE6EB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756558869.3070.5376431192652454256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe40004f6befbfca2e02c332875901ecab68f36ffa48e424b94398e863c71cf
Date: Sat, 24 Jun 2023 00:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687565588
