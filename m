Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460B6B66E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747017594; cv=none; b=R5gGJZS2bJoIDJqlqOAWuxJZQxb+KHKU8l6pxSoBT/3nPqS1gx6bdWLwxO1sA83Rj6A8fbrzm4bcTmBMsczt6YwWBAolP06Lv5tYrl26nEBlUw4uXrBjua5ojuujuYQ44P+pt7EHBZ9MfPaR8OBlNH/exzcGKrH8W2LtHow3H2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747017594; c=relaxed/simple;
	bh=kJ8DgHqUkOFSv8AAtaxR4sTVU41ZVsUvq7IYo72X98A=;
	h=To:Subject:From:Message-Id:Date; b=UUc4aQCl6E6TQVEQ3fdONIt4upgFjF0Z3fLqYQrL8Wi2EO1W/8LBQ1F98JV7+TmDRK+OoM/I0letLyAXIiHiaLfEVamGbnxQmiO3BPTYyH7dffbftH0rAEyMbRLxrjxXMBGkfLu2+YRP2D3pKHyxfnCZVDDAP61ZZQG9IMQPUFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ30FCfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ30FCfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747017593;
	bh=kJ8DgHqUkOFSv8AAtaxR4sTVU41ZVsUvq7IYo72X98A=;
	h=To:Subject:From:Date:From;
	b=jZ30FCfLpaRkDO0PhlExCTXPG2w13P8cA11X09cgSvNWGwrO9lJEEyLtuI9WZqKoD
	 cXWa/8WVu+iOrGk/lMt3Q9WUC9M8QFl6ieViZ9bR1X5bm7f1usGqV5GkTlXMiww2tM
	 EuiAxL87NbPHwIKalxjhtwMnaKF/F3yfdqa4ZLf3bSGqsgn8Oy6xabZyXMsiulWoAC
	 PjTKnwbM+9l95bVOHLcHA7UY56Udqbq6z35D4Aw8FJGiKQBYeC5+EQXc3TdtOdaLNx
	 DoN2BH+K2MLQ10yPpYSfTk7rTxGt8YtiKvhs4jjp6jBctedwWhPB8Nj9+Sc/wC8P6V
	 VNLqyzrLo4XXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90265C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701759357.29645.10932253764169634264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b110ccd1bea4473a9f7eaac42acfe3ec1e57f68caae48acbdf8e4bb9ef9671e
Date: Mon, 12 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747017593
