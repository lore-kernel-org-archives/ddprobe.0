Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCB13FD4
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729686354; cv=none; b=M5LhxXn2m3iYRcQykPdMFARecGoUwcaA/Evk4Raqm8aXKSUy+VLJLzFQdM+lTxqkKrMG+oiqRMga6XTLWS34EU+sHJsdAW1ZIrvZ6qDoipxzZUnpFdoiwAsWrxALwpMLVEHidbcEjp5K0jtftfRzFCAyslRRCxX82hSh+G/ZDDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729686354; c=relaxed/simple;
	bh=M50i5+g2QH0VpGzk0osyrLE4fFiK2ZJq7E7YDAxDrD8=;
	h=To:Subject:From:Message-Id:Date; b=YZdL+Fa/sSrYHFE2HwsPbnB2gXkAEmWlXDloWMBounKjG9hx/t5XAVKJmhzOeS4D8ZQzTW8YTkyadddAY/o8VWZtAVRK4YG28y6EGxbpLZdLguBWPdAW/EMKK85v8vejc0V249AcF2c3n9XDOVYJPIUh8YrE1PO4uiadEEjetrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYtgxWLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYtgxWLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B088CC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729686353;
	bh=M50i5+g2QH0VpGzk0osyrLE4fFiK2ZJq7E7YDAxDrD8=;
	h=To:Subject:From:Date:From;
	b=pYtgxWLkm7QxF+0RMH6lrTWMdDacDKxPTJN/Dt4/LR4P5C31SqUJxI4k9X8+WlXle
	 eaqBT3aU63FDEbIDIaO4mU45wtvIIpZCRjW93gi1mFuwnRvCuSF14z4XlEgPlkGVMQ
	 VOS03pSBMOHFCB8aLw8mgb6Kg4/Q2XRq6fLgPOq+EcY9P0D1INTV+Ad5MtpItXunH7
	 PmEJY5VFSv3BmA64rYfS43XvhLpwuFkPSkUEQLg7hnW1hJcIplCo7BaQwh0HwesxpK
	 WjRNNUfb+FTsxTUpxISFNKcwSnI7EuVfw7/MivOK2FzNZFx19fZogsSgE4m4HaVkdi
	 HEAhLnoKCVNBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A822CF5365
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172968635362.2243.7766367077593507270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e943c4ae29961dd46269ee594210c70256a943ba6ea47aebe8998116d0aea2c6
Date: Wed, 23 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729686353
