Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419BC78F39
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762051794; cv=none; b=LCQ763I6OZ34YmBk1V9WQLkRjclju0c9t68/AAdlsnjcNdzZAg/LP4hYRONGS43AmysYQ6tI3frZZlIvFLPR+0ovGifxUCWgN1V8XSjQa9txXqZ2EZG5oMP8RTQbDhmTuX3aHvuNuASRXZOZhM2Ffgt5FKUzPrNq4nXG/+hoG4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762051794; c=relaxed/simple;
	bh=YEL0Rl74KpxRfw/tGadkMCjz5BINSQ27c7EWp7Fe+Bg=;
	h=To:Subject:From:Message-Id:Date; b=Sfj27BIYnoMKRzCVuCniwruc2x9I9lOXwk/hGK6+Wzii87MjCeJGXGIzLCKGhxXzWVN9zvGqpyEkAQEkKisQzivvUendPyQg1Sb4IGVJpgpB1nJnUTTa8TYLpBAtl2k9ZwTl5hiyzMV/CeqvMGDQLRgK96keg6+X3WEtqoQeFb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuMLVg9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuMLVg9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6E2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762051793;
	bh=YEL0Rl74KpxRfw/tGadkMCjz5BINSQ27c7EWp7Fe+Bg=;
	h=To:Subject:From:Date:From;
	b=PuMLVg9lzX/1cVBlFYWAGCxX56Z7N0XhW2PAokmpFuLcR7a6Qc1LNblxRD1x5gVsr
	 vFkpMnzlYzmTj7/OnMSALuA+0rCD325H8ZfkIe1v9XdKK+WKwOPrbyqRRFR9bVX0p/
	 qXefWHSf9xqGiTO0r87Hb6OGrHwcOu6kWkITUZfu8OFWass7jpdCWLi8QTqeKeXzf2
	 siHYHmYJ72MC+NsH6hDQjvAEgKswZKs3CRRNvZWT1MDoZbg+ngDz6t98/iO57VbH8/
	 Cz29VVRWLxl60KRMEeiffOwNKPmHI1KBfIQjVQzfWz2I5KKl3GqvOftdcScllNZrO1
	 RWYZB+bqeS/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98780CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205179358.21115.13005374323324181145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c9e29901168b4601aa7533b5103ef9964ebe19842499faef67862e2580c754
Date: Sun, 02 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762051793
