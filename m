Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE82117CF
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A200C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665582653;
	bh=NvknJndddvf6plt4VKY9+tfNluaDeabOjfCR1ZME9HY=;
	h=To:Subject:From:Date:From;
	b=WG5Yk1fzHeMrSv/sKIAUn3hO5DBEiyKO7AIK/kna9N212YEeBx1E3Md0D41AbW2LJ
	 tM+U5RjJyn6i1fMurKiQUnSvB1RmSQvS7EGO06TprCrdmz/ndCo4xnLmBbauRR6mZy
	 okkJa03Qo3uBDGYyJNF1ei6IkvloO//KY6QVD3TQHre60qv/hfnnM6YUc5v0slAE1P
	 U/3qjrsksbxoSukMTPYTn8cAYohSaPtjg+vKECdgT6VAgR5IbTuZ+UszGbzbrxOb2B
	 gr9afHt8xfmjeq4HL2+FMVpB+QcuBNig66yeEXav3irKEJEGv/rwQaN3qYTOaNh90h
	 sJCyqlqO0hVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FECFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558265331.30812.14524808667067283144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700c5365773537d38a32e5e547378346998977dd63e74ac750b83b1451310058
Date: Wed, 12 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665582653
