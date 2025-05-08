Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36841253345
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714594; cv=none; b=O+TdWmEKmDZfEGg0f/pM8N6GMXJQS/pxWo0hiBp0FLr39xFuuBDROsWTgzcBGVtFusazxBgFkSXHW0zKrX3L89vtRU6DkykJWY4MpvOjo/ENz0BmMU8XMN+cB0sHx+wkrDIZLixHnF19nnUSV/uM3BIeyVt/vEEwtp/LZ/Aemgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714594; c=relaxed/simple;
	bh=/7ih61L6ShlHq32ybnbitLqt/YkQ4lOD0lly6K88rAk=;
	h=To:Subject:From:Message-Id:Date; b=e4Kfr+YkX+/lKwkzAw/zzdoS8Qb87q3vKHy/lvSK5AMT0eTcd4XVl0SUaONPOTyAOPGNc9nLJhffOhr7ifoygJCaIyuVjEwVL++M1NwNWMclroOuyo8xY+/NtMDRsBOSS6nzPxKClBqwWsnAKOb6VlTEqsHJbzaK9HJ7zMlAUNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc4DmMW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc4DmMW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC82C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746714593;
	bh=/7ih61L6ShlHq32ybnbitLqt/YkQ4lOD0lly6K88rAk=;
	h=To:Subject:From:Date:From;
	b=kc4DmMW/Pp4ZfgtXy6Gi6l097PxDrIuSJLe/mdTLiReRGoaREcc45rJfJL0Q0SDL7
	 z0LUxEZ0wqYXXmdijs2V7+SNOhSIlyBxovwDeMdoVb4jhvJIsQXxKJ4QIolSJeTb/0
	 lHMFhXFObvGWNQtpoXWXd8RosBhW07LOhngXu/kr1Qr+wqRuHiyRBXbFWywq8cHwSg
	 IQkUvHWlW7hpCPEZgNnWTjO6jsyfmJhQ8lzsm7c4Tq/RZErDLOLTmV/2eg2akPxqa4
	 W5X81/RnzgEz1x/0sQMycy8ajt63YzSlgRzlmQzE68lz5o5PLUrT9PH547La/OoRhE
	 qQJQ49DDPxVUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72DC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671459357.3485.9117786325035450883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9a2cfd7fc5d153df1e136b8c527128230d0ab7d42868c959b4785d258b10bc
Date: Thu, 08 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746714593
