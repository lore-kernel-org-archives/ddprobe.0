Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1DC263B4
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 20:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18A6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691094188;
	bh=s3NV/a9/QhkTTgwyXA2Z1cVuOcwUOzAQRLFi+3onO+E=;
	h=To:Subject:From:Date:From;
	b=HObb8xQPGkClFwzDSpMNz0oHqJGMdGGBIcssIYwj9Hoze/9YE6ZbFHwppJSWbgwCA
	 eZHehtPpw6uBdYQMaKEyJSOClzlgjomID0IujyG9I+0ujCZd02OJWg3YT3YP9Bnhv+
	 Mb61TKyvGYekq61kUB83OhpFnP6ToYFnePV5Zi0xOnUJdrX99quBNGhdgnd/0Cw9N6
	 vOL95deMdRBO3Kt4Rr/z9EpYsPQUWEoJGduIpMksgDskQ7930Iiy+wjYoiwHWwHORn
	 Wptd7mAI/a/KSZy0xCD2pON8wqGVPQMrxnwTNyNbRi1Q+oGcZNUxzddb3C7xyZaAjL
	 R3FiFTcjfmGJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36E7C001DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169109418866.24739.10196433450406688364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fd2bc52769bb6b51f8cbcc68438c085c69ccff53e6d80d9f31ff1d46272819
Date: Thu, 03 Aug 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691094188
