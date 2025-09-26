Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC0227D77D
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758872394; cv=none; b=IhHEfh2r/pOJ0S5cwi3sXRDavZQrioDYCHYRSSSPMucvLFYn2fTVoxzs4bSn919nXtA299iZvB6OTRYdxcsicH0K2yvqh7LlRZnyRYQ0dfSBQ7YUjwcQH0wM/x4jVsbMw9/+xhpreE/pmpaz/agt0pn24/H81CoO0MIP+ieI5iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758872394; c=relaxed/simple;
	bh=tvzYBjHFXWTIHjf1QuUiArqtK8uH3+TqIA0skB2FwIg=;
	h=To:Subject:From:Message-Id:Date; b=s6HxEaaT8HoHMwEJJC69sJR+QaSg4LE01I6OZ70JoYWId5U6GXl+IwPA9nK62V3rF4AZmO2TPxbCvh2n575U+g8lA2IrzZMT/1WWIyiK/Knte3UU4UBvcc6Wy0Jx58SKpn2DecoeonRrYjWRbGOdd3fLfIs0QyDmghwJgqLYcbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9wjho8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9wjho8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A2C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758872393;
	bh=tvzYBjHFXWTIHjf1QuUiArqtK8uH3+TqIA0skB2FwIg=;
	h=To:Subject:From:Date:From;
	b=H9wjho8VAJHTzvOa0ftZDXyjRKfhPRHZ/sGRPEwjw1s8B6L5/OScuO0RWQ7t16AU0
	 nbLrmmD2bR27XXE0l5nWVCjg+tlUeahwL1Jfc0k5cDyHLq6S72JrDWjtij+TyF1UiX
	 IJ1bczrORyExrLsh73dkoBqMr6o+t4fv4xZ6/J+hZIFIkijNSYu6dn9yOCmRr3ZGdw
	 fq76K7jyNcE+GeKjr/CC7vueNHhe7vhps+xx68VZLtb5N93/h+zUJMUh9Ki8CkOoe9
	 Lzh1C5wzn6fr+hrL0WPfXIa0XiY2h9musqxkVcfWZ6SmOEvuBxNlT3QlBzwafG+MeW
	 BhTlCpXDO0KrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C260CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887239363.9768.10762289368931796671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3558964e30f19ce3a90a033d0d8c90bead899ed3681ad146b11f6bf6c0bf41dc
Date: Fri, 26 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758872393
