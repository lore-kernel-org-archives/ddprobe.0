Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C99F160
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 00:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73A5C32789
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 00:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694477048;
	bh=R+aPui7AvVdJtmYL7chruJnQalCeTKVWdW4d+pLfQF0=;
	h=To:Subject:From:Date:From;
	b=Fhv7UN6l7QhPYi6XRGF2P+r+ea2m/qLVfG5yShncqoGJSDjntLYPbcOyBv2g8YODU
	 secjRiIorI0NjWe/CfSlTIDBFxON+PvUvEe6F2GaMB2lyTQU5c11JMHsh0aNTLEzpe
	 jqDFfB6D/eBkIeVDakuvHHk1hmRFOyLXO83e6fq5kWv4ysl1KcOR1Mx44QUQe3fOfm
	 8LK8EIdOZ/AEPv0F5px069PyrOWQhP0BN0a7LV5x/KOfyLPjA8+R+H5ScRA0RwiKli
	 EE1YU+LqOUsbY/kDrmPxCa/ZxiNuyAtEQPp/o4AZWMfFqtqVU/lwDqVLwHamPKzjcc
	 7gRPqoRn4+xeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A99CA0EC7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 00:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169447704868.14910.14421028012680068854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c80b8222ab14a5c950619aaf334868e9169103f347bb683874e1510452422c
Date: Tue, 12 Sep 2023 00:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694477048
