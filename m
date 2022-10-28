Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7BB1FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3F9C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666951854;
	bh=tiM1i42dfwowz8+BBmrZ4IE1amUfflvhSSdrC+9if0M=;
	h=To:Subject:From:Date:From;
	b=fupO/KeD8QYJYsDDlWcjvUJxuIurk61aHTR5fSGzUIpNv2cAIFABAn1lcvd9n4G1C
	 2FkuIwE81t0T7Zo3ZHfYBQFypqy8O8ErIP5tAh7r9Hb/GbFou7LNqj7zeEBEoL3xRY
	 0Ds6wcJzpbCB3kxp6Rn6ZI6snIU7yfw4wZ8CMqSVZ+lCrNcflqfchQTCgs4c3vrA1W
	 wsvMwLbL435/xpI8wXYlm0vsKMJMFIcBfwqU7F+3QvEOEhFSGngPPngoZaZKuFF/Pc
	 1LfGp6Wvief1bPqyMfrBFN8WfQtipaB9/lGFp1U/VCvSlXbL/+lBTINyAdHgqhlpB8
	 GolHnBEEqLnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DE1C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695185433.19305.11143162768329005471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb35968d9b8a68aaad0eab337b73d4461a6a595298e840c56dafeb8eee73c066
Date: Fri, 28 Oct 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666951854
