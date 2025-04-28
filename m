Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F4D267F4B
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745842193; cv=none; b=Q8ueoNR26xivNhFyIfNGchL9RuZ9SqzLP/QYjt0gJBkAvM55La7ADsF6FZ3rDcFZ+LLgNKoM8IGVey7UBPFSyFr2bc0trTdLbpT2DWYzw66uViNUoxV1uhxnQffiGv+sus51A1gZYxVbYMzdwUVkozXKhZ7/QwJ8keJgnZ3RNkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745842193; c=relaxed/simple;
	bh=LY49HWOKCnKs4L4Vf24LIxkwbeXoauzoM09Tux7K2h0=;
	h=To:Subject:From:Message-Id:Date; b=eGnFW6guN2FymKWQnwy+0WBcTyIhDiV9frQxY/2p6+3hgaDz1z5qZiYPegDBIjW2gGJ9QWodqWpy/HqQAHjRB3qknOc2L4vQfL4OgvFnNMtSEjyZpagmNdxZjOiQgfY9jkqAsUMoYyMimAnbONVuOZ20JiQmznCbI4i4knv3LqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx+sTR2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx+sTR2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745842193;
	bh=LY49HWOKCnKs4L4Vf24LIxkwbeXoauzoM09Tux7K2h0=;
	h=To:Subject:From:Date:From;
	b=Vx+sTR2P3Su/BwKmjA5IwojUSX0x9ZiVFuX1Z07RlY5SMsNbaz9/DqiQxlDRp/Z40
	 MMvMWs6Ecvvx7nik5mRvSV9+JbI591EvZQH7gM6J5cp36+o2EF/bZG0g/eCUq5OTRk
	 e8aprJTHL3McRy7l9XLhI7JmmuN0mwXLU96SDKiqn+Pdyp0GzvkwufPJjQNP8mQg71
	 /dSmtwEc1P85pNhanI5s1apkDvg79dTJvIJGcV96sdqJLn3IUbLPY6+5pgmRmanqAJ
	 LPU1wLh6goLjmcLJwJISLjhCjcGYGYiBs7Ig86E4Sggiw8EfAEOlqT6vgQp/ZQzLiv
	 xcayQpqSSNizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD7C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584219357.13243.7956362856420766143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32eae65e246cf26338904d4b9ee46cff79cd05eafa591def1b01a0694b311fc
Date: Mon, 28 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745842193
