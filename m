Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DA66FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89107C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670716287;
	bh=FAYor0XtHC/5PW24xW75sZ/smxF0SyowB46ScVI/Y34=;
	h=To:Subject:From:Date:From;
	b=TJWxGZNNxrQXU++dqYTS5abyFQwkDbTiSkcGa27eKyw4tS6eamrC444qjSfBddolt
	 Mq33ZoPz41EqGBsWa0Y1ey7FIXXG3BsYGZKJY+2FWezs+1mzJ+bbKMswhHRoxYZMec
	 8Sq6wZ00eqOjeIKpxwljsJW7oZorpCHFDGAnF6b5T/yZvoFDFlvP5hWyQAUlp3bYbY
	 ziEvvZHzipynfYgd02Nf6a7YjGlM2XvDyrlDteN5IT6tXpSkmj/Xl1Js8THX1qHlxj
	 plTEUSvS6gWBHfNH866bjrgMN5Hpc2m+N/7a9VGg18dJ+6o1MplqdJk7fBm1+oIMMo
	 SQHvbh4eWC8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B96C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071628740.28854.17897821683036037084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd82e39b8c754c3fdf266856c6add5a0896fcca9c972c9c1a0abbcd3e3a205f4
Date: Sat, 10 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670716287
