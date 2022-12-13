Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD96433D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85253C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670938287;
	bh=9FUCnm5GW/5kQQcxCWXFlqz/cjSBg4q2ybbfdvjJ1s0=;
	h=To:Subject:From:Date:From;
	b=E34im5t9puUq01tkzeEeYbpae6082y0afuw/d4GZu6bbLGy+zMl7YOT7o0KSgSq/5
	 aXsbWkCh2LlrRfd12kRhy9ggGfodApMupmSkCgdM5+3w/KHADyGnpEh3I8EstqUs66
	 o49LNn8UpeRepEeS5U5w+nahvz/IuCCqqzikF2n3mXFD214Vo0kL/+toE6ZI1H3j+o
	 jqMAaQiop+AADogP5X2fzTy7lrsWa3bijaRlJpG15psnoPL9UAgKLlzjS7aYgEB+4r
	 UUPiQqzvdiXP6kdOQUw0doUPob3pWdcsI9xSUztZIIJpK+6XOfDGj/8eV22h/cmH3h
	 1zpKIyG64jxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6799DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093828741.17154.5868720190525603689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b517611599e1e32114d4e9c9a980d13ecaef28de1e79c56dcb44088e81362c67
Date: Tue, 13 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670938287
