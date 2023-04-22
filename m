Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5513A6AB5
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 19:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06535C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 19:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682192466;
	bh=qsMXPWCVOwCsdoonjLRk9NSIo3NPCd4Erx8oKcbVs9c=;
	h=To:Subject:From:Date:From;
	b=goWioVgk+/4Z1VsKY4wAnLT+kToHkVtORxWrrjMkK4AZXrpENy5gIdwa8YIkF8PHX
	 XNf/TmeE/EYjy6TnhwHG4GqKKUJTlLbppdcg7SMxMD6K2Hii0MuMWKs/5g49GQbpzK
	 fJ+1X+ruhK0wZspDL0704mY0TxN5erMin/2bs9Uk5SCtL7lGEQHHVkc97i1tKkyI7G
	 vIugar1Gz1KWr96/Bk+UZ8e/u6uPTd36wIYfEDikf4Tj+AFQ3A9gjbEWQzY5eht3bB
	 J8/bY+iNWGNfNEGzSKU3mldIPtbUTUj4NjLnuETHKECoT4FuNOAAdmXZZFjvNAdb9J
	 QYtC3JofzVuqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CF5C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 19:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168219246575.3545.14883001353723444738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd869cf263333ab5583fc60555f60bb71cbd769efc404fea03d03982438f0d3b
Date: Sat, 22 Apr 2023 19:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682192465
