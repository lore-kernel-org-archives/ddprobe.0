Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17ED23A4
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B730C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665385253;
	bh=bRuWhn+ezDpw3ShDem1pE5ItlUh7vMuE62rXeqQEuRg=;
	h=To:Subject:From:Date:From;
	b=FTZgGXZzIy0iXcjt6HFJVZ4insqJgTnwpllXjR1VXNCtFgIFShO6b77ZJtrWiYSS6
	 K31a44i7pfVNHir+m0w1gkIZijpFpzr+XIrxc83rAcVGUUtdTR+hhPMR+UenIO40zA
	 oHjZxzjbrnQZHUgBm4et+2i3e2hIlhSVfUB58GtVZ6yIGFU5K6q7wLOToHxhnSvsOH
	 bIX+NjEcKsiK0qGXiegAGvaxUVK+6LyFBm+Zec1ey/UUyDAE/1bSaLBzse/oUt8Qrt
	 6Bg+NomrnD8+FGxu4jOIbitXOT9KqBLr7NbKjMJq+7wuYFeE/vR4EezHJc93hx68XX
	 WT1tHdEisLziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55000C4332F
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538525334.13484.1892169467173735358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd907331b1e4fc06f738e7ce9f687bd6e40a0972cc69257704b9f21fa2423bf2
Date: Mon, 10 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665385253
