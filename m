Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6512423814D
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761968394; cv=none; b=VwNzT3TVmHXqZ0XE5NxIx/4fMeQiG/kUvpRBJYOdGI5uUw+XIpWajXJABwwv/WeGOx4ltHTuJpg9DNOsjYrWbwLWCg7cziXBI23VtYYew3kU6PEDE/hMrCkh1D3XVTTvYc6E8BQBYkV4vDN6Jls5RQKW8PjjbZqgvbpTEhTRTeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761968394; c=relaxed/simple;
	bh=ScVT0EoxuuzOQESTIwDLRwGM/k2S9zOGxfeU/qnWROw=;
	h=To:Subject:From:Message-Id:Date; b=vB5Z8Vuc+iJx/9QXbEo1NjGVs48ZdfDmsYATLYiHHQuPIBRLyX/FjQXBjGyWoaQGdI47orc6wIhgp7jBxR9NUNXbugUBIbT/n9rnP/3ZO4omVygew3XUxrm8eShEE57rKzF26qYgwMUdzUfZ9JCRxd3GLoGJI1fZ5z6Rka3hWaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuwJqS6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuwJqS6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0887C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761968393;
	bh=ScVT0EoxuuzOQESTIwDLRwGM/k2S9zOGxfeU/qnWROw=;
	h=To:Subject:From:Date:From;
	b=TuwJqS6ICXNiNj/+2edqrvIZuFv6Cry2lWzbkA9Y9r7KZVIRAs0fha2qEvjQtVFED
	 HtewJy9/JX2k9vmb3MiDeV3bc5oQHw3kxb540ZL0Pjqhr/P3iMySUgVWmCM/rjxzOz
	 luEE6f7tLkUOw1EwhUazU45A1edNb/Np+Di3uhXpQW3A+sTLPQUTzJO329trUCeFJV
	 6smyB7CRf1yeRSnBWfUeUc28o9G6rVJAIMZmE7fJLE7NjhjdksJbbE25v/VxIV76Mo
	 uZZI6v3XPA7KxdZjUSSdgZn4rgjEA8tiLlmB7lp+g+lvub03KQUsqOTE/cBAw50pAz
	 eyXCsMNreY0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD316CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196839358.27927.1480887152190255388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cc38198b864366bb2801486b35fe882a6c585a910f21da08c8e59070e67496
Date: Sat, 01 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761968393
