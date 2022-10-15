Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42E6373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E4DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665811253;
	bh=KNIvbVPTW367ZNPKY21F6KuVzu2hOhRez1mkDNL7wuk=;
	h=To:Subject:From:Date:From;
	b=AUIG/fRf7ngJBR+fMvv/9ST4ZALtgpDNDalGYPIET4D9+IGZqUCIJvvlwkQaOdt8b
	 HazHI9N0QQIW5thG93ogvlHYSeXwQbKyeME7/WX3C2ukyGZdH16eSjPVw5HdGIn3tm
	 pDYSDMsDD7W7IFnADeTWBWMv7g71En6KBK4MIm41LMfQr6rDVK5bhTqh1te9aS4mbs
	 56iq96EiDgJRwlF5l7hjnsQ45aSl9ODm2pgubiHBCqAYWFTnYS1XERg5xSZpf6p9Ve
	 rGPztbuOYGoNYMK6keJbNyDnO7g5ZBERWTTuYpA6LHU+ZLcEVqRy+FckqynpDpjzqI
	 ugaBcN1RrsuTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5449AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581125333.10636.14927535212669311606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0442132cf75c518b6902bd391c2547b1874600f7e94740bb433ad0c06f1d174
Date: Sat, 15 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665811253
