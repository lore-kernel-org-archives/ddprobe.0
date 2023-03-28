Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682712F2A
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09165C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680036786;
	bh=S+hJRYHjt1IwUiD4ibaRi28gqyvFvvsKXGB0zJoRbfs=;
	h=To:Subject:From:Date:From;
	b=iIs+vQ3xeqaQQtGsnJNfxBQuRmItZxMrfehfTI8hSrTLDE0uNlIYj/GLqMo2HhtR2
	 Y1kBwf9B+SLWOZBa4syEl8FYD5sSyDnQp1eXHGxItKydMWgN9kKV2sYXsPxgUpQS8M
	 iBZqkqEWiPP+Lu1nEW3LPzi6hioassZh00oDp+8UDNhB0+VGbEPEaKOiBIhArIsNQ6
	 IMOLghNXdGzvcfcRm/yjHCL1J4Mgrsde8waWspEc3Cd6HlteReh+AxVJEl2Ir2VXst
	 Rd9hp2VhzUI8N3ndp5s/pIRZLXnzGZy3rTsviUYB2usNdUW/qG7yhObeLFQPkwq8nl
	 57qz4G+nGSNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF83C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168003678583.3425.9815518913546791604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24e7a8b8596b257ed494e9d23f6284d16f7848c94caac5556b2e1d640aa77bf
Date: Tue, 28 Mar 2023 20:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680036785
