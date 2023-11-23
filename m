Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C4915A6
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qauJSyC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F51C433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700701696;
	bh=D9npAAajLwxn49olCc/Qu5Si8qGUcgHNnXnRXU2nlBU=;
	h=To:Subject:From:Date:From;
	b=qauJSyC3+HigxZzYuGZxNPoiaQchIN+SOOOXgn7OxLY+CTw6/Cz1zmmZnUOsXGgYW
	 OTSG1ofM0DDDvUi2MYhSzhCXW31URTsMltLp3t7u6HB6Eeujg0mxeq00tIFI2vjHCJ
	 xqJ08iSSJiMnKlcQ9HX+gK4T2vqQ0Nz5ACQCjmvMxlr2Zv/va98DYXvKNuFUsjDT9e
	 +GCJ/B98IXp81Vdr1i9eumJ5P8btlkW7Pn+dRR2EjwgAuMS0sisNGmLMSbM7a5AbbV
	 j3hJZUyaV3xIhqWuXXzlsd2qEdBUApCos48tLrm/NW+fGf8F5yWKqknLf5ag0PjIyO
	 5L4zmCYIxG0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66140C27C40
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170070169640.2146.6116905277760362941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2974c54928bd43b0da31608839b99e34054b1de5647c81e3ca65c9b05b6b3ea6
Date: Thu, 23 Nov 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700701696
