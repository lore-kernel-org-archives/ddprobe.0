Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169741A682A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775321734; cv=none; b=DZNDeafqyQn6jS0lmXWKPfgE+ZyyFOQSWPXeMZ9vJ3XrRtL3m6AJoXY6OZ45duz3o21UgHAg4H3SlwU9e7sHkctIpsQDwvq6IQMU2yD39SF8Ow5lIoL78XmktqHXwxQl1sdCSx5Bl58Yt51D3xPBwrzmsFao0zCD6gKXpSjNTXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775321734; c=relaxed/simple;
	bh=sOnCBUQU7Hvx8O4EekiYedsxavSIraaXjiEhxBVw/Fo=;
	h=To:Subject:From:Message-Id:Date; b=SbJj9jZZ5wIxCyw5xgv4XyoQLIGGT0Gxdk2HwMmtdIYceF+Rk7UQfAu7djD9c3UKmqe9SEWbxESjeZksp0xQdoH9OW8evJX6Xh7aex1hZPBI3I0hMAGmPCHdZbezdakN8VTgUmNKVRn+khDXVtYY0DYHGK8esPduwunRxyUzdqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAo0Dl/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAo0Dl/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD8CC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775321733;
	bh=sOnCBUQU7Hvx8O4EekiYedsxavSIraaXjiEhxBVw/Fo=;
	h=To:Subject:From:Date:From;
	b=lAo0Dl/xH+oIZNmQH+Ys3yg7HPxpf7OsyvixjwL8qtWj6rIJpFk6nnzzkVnhi5jr/
	 SW8yDcXpRcbk/clr2FzHf7S0ONw1D+EjoTYIaEK1Yo7KfKCXPweJ8vCuZ6TkW0L8cA
	 3afDVbPLBe5MZ7/wd56KLPcPOHD3tbnzL+ig0REZaX38tXxcuxpaLyQOVtqI6zXu4S
	 cQecY5IQe07dw46lN4BBd1f0zkwtOtkCGx4rpp9sQoc62XmsvUTe0TSUsU35hYnfqo
	 sIJGdarrVIJi3LUTcERLkaomxMFMlPAE6lC5vHdxfJa9eyOe3TgMrULHKc4CifYGpW
	 Iyld4aaTeDC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CCE63FE3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532173368.999.8996013184500363223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651f624a82b53bcd8657578d9583d826767eb90779d317ad68f32b63b530f8a6
Date: Sat, 04 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775321733
