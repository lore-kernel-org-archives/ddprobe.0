Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C197C942
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2300FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 18:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680634626;
	bh=GZ5Lndwf7CQEIdhbetb63LkyqaHujf4T4NcYvsOZhvc=;
	h=To:Subject:From:Date:From;
	b=sSLs/c+Fgtvlj3kgvxxhJ7rSo+yKojoMpUvOQ0gazTYgVX+cqyB2xb0BkmJpJSfFS
	 jBqfbQ4YmAiBl++pMNRzDoZ2WxWDLKAmip3Ux+D96HcbFngKx2wVXIw4mOJB8piwHF
	 oMfNo8M0lVbZDblWV9EadLGlv+pr9TGtclZsMVDZS0D1ofyWLMCo5q0kkUv8fcui52
	 gk5xLGl9eVa/trOrLvfjZ/D3vi6oE7q/rgp7KbM1+oOE4gvFgInCUwkx3YX7iOjgaw
	 MuddetrLu/yA6testy+ccIKstu13daD0RA7u2KQfNY/2zihAAtC3eG3Gp/xLqP0Wjb
	 5xRoeIqpaaq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3D0CC761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168063462597.17087.9412631999422661526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441322bbbe96e6589c98cf7f0a31f4ba06298c4a3b7f24856441cd8b5b229f39
Date: Tue, 04 Apr 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680634625
