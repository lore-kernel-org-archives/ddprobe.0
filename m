Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628EE374
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 01:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E97C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 01:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694827508;
	bh=W61Fxm6BVUUh1hsFm3oWRTbdBbdhx/klsNuHkpN85+E=;
	h=To:Subject:From:Date:From;
	b=gTAi2qzUlFUGCml9RZzuW7uRrweEA56Fqn+3JOyP5FR9WZY6MC61ad/bPjNT7IPez
	 G6fuYdlIdPpjQz5JLCu+Z7mLnPwcLP4U65gdv7nK+2wrTKxWoN3+ayd+ywCEXjsU2y
	 2vr7Tk8WXyZxGaVVQCszzf3uC6KCXWT5zkenNj+fBZVhrOAUj82A8ejcIyIRAhycm8
	 odDwUvN9/A1SiBPJpM/c0Z5mGHrIlzMcrG9Nc+WuuwrkpadsHhffqercP5DFOeVHco
	 no7qqHa0eEuxXTDQu8b6j7E3mrjJ+aeaYUvVnyaPI+s3iYPf9mi1UQO0eDVR6f6tWx
	 uEaS+WSpF8Rfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDAFCD37B0
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 01:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169482750867.21605.13610370786900960217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c829a8a8e20011f4051ee99b5bd74749d8aaa9eafdee103b8a36fd54f2198aa
Date: Sat, 16 Sep 2023 01:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694827508
