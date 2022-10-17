Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA45B4699
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C154C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666024253;
	bh=bjHOerO8RkIiD5pZyBYmMbB8MZeFyAdUG1xWg0fs3uc=;
	h=To:Subject:From:Date:From;
	b=GmaSxZp6yTU3qW307vWcT0cyEbnsgUNTRtXmWvKO0T2XxBAT1+0IzRiWhacSuDYFw
	 YlRzwHd3a+mFGBXmBmJ2TKkAXXOzTOOkm7zhLPt2fl81wwHQx1FO+kirmUF3au44si
	 GGEG7SdwWukj4Wy2qM5zzZU9VJRCtt+MxrnS0XKH1FCuYEN5BBu8xhPw44kEeN6ycu
	 g8NkUXoUq0+a2dKifNvTxWTDFmZ3hckafc6hizg2O5CeRMO+o+CE5DbzUG9D7AMzc4
	 TNyIycVHIuqNsGL3QvPmXp8HHIQ09+VUMQyMHEhMRe5ZKUWV1KGNLNgO5L4eSCy01o
	 njGQh/pjEzxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506C3C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602425332.11304.5701480882393809843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512d51f1d20468af9dc9699f24ecd00c94e052a79ddd029f537f118ebe02c6eb
Date: Mon, 17 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666024253
