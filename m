Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5179C4C84
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719447203; cv=none; b=b8B1K8WTcUGZYhxpRnxH5TBXdKMJfESTj3xQjXtDvChgeV9KT5kZnWY6ANGRkeAayEqwWQZIXh2rGebcFwIZlGL69Vq1gz1oMo2yTCb+gASJUcR2bp8mOW5ikc/1whpUSln4Bor3XmLUuUwyBRHsAJVbddyZxhhjvZ8vyG8esos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719447203; c=relaxed/simple;
	bh=5jYo0Ty2zhh6lVagYXqd50hUgofvMUqK1DOoMLYtqT0=;
	h=To:Subject:From:Message-Id:Date; b=tJHBcrFdeb42sYenX0l6uZG0Dwgko91Ujj5kQDZ2QNFebALzFcJ+jLOVtYbh1eV1mFKq7xQhnWUMd4Ye2XJd2lanvvzQKmFKo4c0LML0YFigObd7ZAxzGX0RMUE6ngsMtfF5+9HfJNSDA4fqLiyDpRJz6UU7EZqDVgA5uUCQORY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDKJcBWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDKJcBWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4455C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719447202;
	bh=5jYo0Ty2zhh6lVagYXqd50hUgofvMUqK1DOoMLYtqT0=;
	h=To:Subject:From:Date:From;
	b=HDKJcBWJPUZMrgoeWzSMobFyClXp1Ej3j5/4HAEpTJsxIUCpkVZQ7mpO1TqOa9In5
	 iXcjoqA4KuDQzWN+YLNmA4NbW0S0XNuyQTM5WrNg2YmvlRNftNeUugqA3ERaGh92/y
	 rp2MzYMduqU8Ez6GzI5cD54BRNFqauTzqW4iZb0Qk+Oadu3o+E4jwEWGdQmz7VSzDf
	 ec/1Gv4XuMRWYBY2lkDd5xownOC3rFJQy56ccfpaoL+xmPQZeYzyRdBQPu34r3sPRc
	 M8pHZlzfEhC7O8oQyAbyp3ArZ273LfdBNhwXi3Xd0iXTuVckx/i0YauCFxlO5Toav+
	 k0gbZSA3rW3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF61C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944720279.9162.9988609231800691634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad54bf5445b1002df46d2dc5669f6b963267fb4d71e83960228b306f0eadec6
Date: Thu, 27 Jun 2024 00:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719447202
