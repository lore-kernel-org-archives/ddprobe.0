Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213872D9EE4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776793054; cv=none; b=tE+4r9KOeA6kJUXSOMXfBeYQGRW0k0w8hqP2vHODXB1rzEl/CHsa4j9x6+6AtkSUZUhLVM65EaOPa+mi38myEWqYCjkDycanFjU36K+ZmimXAtp13mFlbEwrkSVftz+Vm4Rc5QqjLrry2yk8j1WWSdUZP9BypRWi8mLZ19wcpOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776793054; c=relaxed/simple;
	bh=u+RrYG/RQOGlAS7FgRDEySU8ZJoNl7ddAt9jWtMGwSc=;
	h=To:Subject:From:Message-Id:Date; b=cZmdzxBchRnIe/JAgAcG4DZEaL+bj0Xf1CeACWS2+L81pc/2jmJTwfK0YvkCNOZa08XO/J35Us4UEXNEKWsW2VztvQ5bdPnZFBYg9mTNrxXWv3cdwXaGauksb+UQXJ/POhsPdOTzgYP0x616/Fln2VnHVwr3ncTEQszeyPpfDtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZy5TZiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZy5TZiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB05FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776793053;
	bh=u+RrYG/RQOGlAS7FgRDEySU8ZJoNl7ddAt9jWtMGwSc=;
	h=To:Subject:From:Date:From;
	b=PZy5TZiEPXN8iJMHmVe69PVbZoszeOSD/qFdUnsDr87wwtq9iXnE5d8xfDfkKmj6E
	 RVLIOMLoI3lTYW84emaPnzzRF5LGXQWYKuOzVfm0FxYfiTfr38W5txCJJU3sB2ZzzO
	 vE3GvdY+WtfxNWupTLByc1U0TL0jxeVYrwqvwNpVcidQd0eK0OlVx4Z6BacY6ovbJF
	 jdQ+FYUDAASQyH6nXoeXnKvtcymlxCxo0BKf+PtonM0rhIuZVSz/3TCzv85Xdk+HGb
	 /ZbLKk+J26deHPz75qr1ajHVRXwPFhO4lUBKUG2uoLNSICR0S98TH11af4hkb9BuGw
	 9OKScW9qAOWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A57F327DB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679305368.5577.7812718125258584312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337355cf4afdbc135ec47dbdc504f2ab7cd1cd6bc95267b858229fbd0089ec43
Date: Tue, 21 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776793053
