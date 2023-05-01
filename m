Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53937612A
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 18:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F02CEC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 18:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682965206;
	bh=sAg4t4xyJCZk63SsSYGqvmdH1Q5hvo+WctdtEJkXfOQ=;
	h=To:Subject:From:Date:From;
	b=N8vgtSnOCmw+vcFZAtNZB/gGxG8YWnavzfA0ujLTXh5pcbzfGaUBHKpjwE5nZyErz
	 y0ZPgpMDAre4D+8zwN3l3+4ddvCLzxqcSNA0qeewcz9eWA2ZLQvrsJxcOpSG3c4brP
	 R4yWiJh/f4tjYTgMe2i+xLz5EyG0ZVulVuE2BdG08fU91EiIJx6Uuib4BxtLnZip8R
	 3ykMTzSauZG+oQii+YK8pqPNlWoj73Upk0Lk4HZu/gEkRBf5G8rmQX+dxFI6+bx96I
	 axwO693IevP2ioyFPT5aSBQQeE66q1SnG3zjL/56ErcunEvuIV43PsboiyEKkAdL3u
	 k+BeIdLaCae+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7DFC77B7C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 18:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168296520583.19958.15633126452010552206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f694e93ca1f150b0720af14c19c017a12be277c57146e86d8b4f4596d157a1c6
Date: Mon, 01 May 2023 18:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682965205
