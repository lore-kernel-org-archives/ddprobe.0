Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267A81FAA
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734410754; cv=none; b=J+Wo0to+k1Zrlp+SjTbejo8icHQy0/aKuR6MzS8c+V201ubSnV+Sz92BPaNYV8+iiezmTGvNIrBe7X9QTyjq6dBKOjhJ1REtXGT2Gtphp2ioi3hX72hIfYQP8TIXTOcuF0w8UJ8wCpQJPi6XPiwb6ZV1GvUWvBhdv5u7o1xuqk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734410754; c=relaxed/simple;
	bh=Z4SB7OLIo+F/J9dxuDV+A66VPeu1yf4YyO1ZzAyviTM=;
	h=To:Subject:From:Message-Id:Date; b=rKvPnRJ1pC2c/4quSoseemC2wt9mUnDGTl8i/NyDb64Shl5dTnxRDbf1A4BGtd2jjRR6P0siggd+G4JCgLkq4vAC2TRRr9//KEVWa4QdPxHabh459TLKtrJhPbwmS4o4ZDNK3GDOaKNllhWu/a44know2uUvu60wymzejThAU+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWW16wH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWW16wH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDADC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734410753;
	bh=Z4SB7OLIo+F/J9dxuDV+A66VPeu1yf4YyO1ZzAyviTM=;
	h=To:Subject:From:Date:From;
	b=ZWW16wH5+q2g2V3441dXTEenLpfDzuefl5AaYiq4/PTKSN9BZEcpDVEn8UbR3I4SS
	 Pya+/6R7emDO0g44OI9NAj38X4D/MiLgsOJqiIFnY8DfMo7OQi3t9xH99CsP4UQBGS
	 c1VuwvNqQlkGTAVxCX8UHOxqctZ3/G5t4Ff6nNnkxxacTAfIiP8hT0Pm9YLMiP+qaZ
	 WS5BguchkG9XMgCHin87ekfXbU19a99Ic7GiLxOI/6KDQxOo25iWln1lluCyrmIxXr
	 R9gFs8BTvxyKxv47NjW3R/vDsj4rKm6PYMJF9JorwuGTShyUt6xeEI4ngv3AtoIgf1
	 aPaO9GGDwk88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F46E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441075359.9884.9430101969164410604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a3b9d727c1fcc37909d6c7a4f2968ddf85b7713be65d448626f24b85899566
Date: Tue, 17 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734410753
