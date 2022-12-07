Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6CE28F3
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73214C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670433054;
	bh=/fSpaI9WoJRdjx0M//vraLJEv4LmGydaVHljW44GT0M=;
	h=To:Subject:From:Date:From;
	b=Lq+cJTunaAkIt+P3lU0r5TEMEICKz0nZEtWQcMKonVnlAJm06IJLflAzC4bdzm7MZ
	 qyrIVb+L3zsyLCL5i1QHVn7Wk1ljf3j270Rew4p0mD42A2QMAvyDjaEb7Jc4b38ANl
	 0EDMeNJBvf9ohiAU31K/BViASMYxqJXPw+g4pFQwmhlR6k4VcT/q4iGeHehHQucpK7
	 8iHxiAOFVZOpTV0JwlFAh4a8+f+Lx2nSVvYJZARglmVBtjiQSYiycDJUq70szR77fH
	 VMFDE8UyHJJL4D6F9xKRv7kPbrj8enuDUmxot563a4pxCoac6f1GETuZW4lDGo9Qp5
	 6n/TSSW6H5eUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A97C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043305433.15681.6838480215178948865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bf54291af88ce2c60b0fef1cf3645e33665685fa35717d2b0bed65fc68748a
Date: Wed, 07 Dec 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670433054
