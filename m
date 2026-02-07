Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABD9263F44
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770447234; cv=none; b=HgZLcdBMe5FjVmyqUoCUCPaBV0niEYnD8rs65jtIf9Gvem75SYFNKNqmzS4MMvt+brdCbS7QovU70wJs/7WwpJEqN/206uEjkN6dMlRYq0vp2hPBEBeNHw69lq6NygVlVXBwdHAjjTvPMVGp1XB+MGyiXXWbyWkWZte+SHZGqJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770447234; c=relaxed/simple;
	bh=3FWFtaQ//D/53aypUPk3G3/w/z5J9aEglSnB3b3j6Tk=;
	h=To:Subject:From:Message-Id:Date; b=cvYEmfzewudQhTdvSwOyyw+VdP3QlCWM2SYjyicZxH0rSp8Y4jo2dml6KzTZq12ejfXipabFA2CAjiUPvISnTOiiyeo0lqlt9IsGUE5HKcxHoATAutIv0nOkGJLcdYqySnuCjHPb3V6F5K7hoeoW5LGZhLEbom9Ax2MtT6W5/Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxwHzHtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxwHzHtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCBEC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770447233;
	bh=3FWFtaQ//D/53aypUPk3G3/w/z5J9aEglSnB3b3j6Tk=;
	h=To:Subject:From:Date:From;
	b=bxwHzHtT9J2okwph2PFx5krgDQK9TwXB2/wh5qK9mZcoZQBOXSl5i/Hb9Ha9Xij4H
	 eCtex4n6QKPUN32zfcQtx9QgBqeRbEeNZG3ahoqTzd6PxtX8Zf+UgxSrjjlCvpUwm6
	 t91Vdlbsse240t3NfvrXfZAVSOw2/XDBtyq3wPNOexg6386hgGTG0aLFdmudpFd3Bb
	 avrjZUTdkCvgD9o/qW8PStxLczJTuZvhgIUc5y+0aq3uIKjg/3Anwh0QI+gC8irUZW
	 EU+RIzlrhcCvkLS9vXj5wl7b2++ca3cxnItiHxqH244NOFyRfHcaxuqGUnZZKawtC6
	 VkNhFMXhW3m/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98424EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044723358.17714.1312789618275893004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121a6f48c396fca02c5162ada29443b20115204dd99aaab991fb02c762189245
Date: Sat, 07 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770447233
