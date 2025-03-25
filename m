Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB304A05
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742871594; cv=none; b=s/52HxZ6ItHeCIeMMTqGJKB357S10JUZpGy05y2zmZo/rR+m6wCRXaMrY/LHzJboTFowCUvZnt2km0XhPekd0yuwMrAgWjJhl0L8MfO/uhPKCFZCTs8jj2EOApxuGHvL6iEt6zVzL9oG+1wX4Hmv6RG/ygETgf+8eaCN9MbkKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742871594; c=relaxed/simple;
	bh=FOaRQwlg6sz3YQnCY3yjK6dcy1nOq4P8/+eWm9lm1to=;
	h=To:Subject:From:Message-Id:Date; b=GgI/y3XfY+gqEnZ/BSnBP9Hif7xIPtETaIogxv1wh6xIXzEpkp2HB/f7iogGFlYnGRs3KQ3/bSnQ1rSpl8lB33UZkb7J6AN4nT0SOwlK8sSYONmvIvoDsp8Vxzhjz7BIzx8GTXpY+Zqd11FpgEsr65DiWJGD+b5Q8XAmoFd8oRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzJwuWXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzJwuWXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E77C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742871593;
	bh=FOaRQwlg6sz3YQnCY3yjK6dcy1nOq4P8/+eWm9lm1to=;
	h=To:Subject:From:Date:From;
	b=JzJwuWXuJUu2EaKIH8CulSYdCOQ3HwKmQb3y+P3O4vkK5wW5o5I7liICRk6JlO/bI
	 amxS19E97j7mtGyDxuhWqlUqp/Pz56P7tRKQ/LfXfdkS1skV0LLqsbPjjRWTW11NlZ
	 7O+9zCWbkhXsQVTmF/qgqwarnjgdpIiE8AxaBCX5PIgYi2vtJq66H6sXKaKXMKdij6
	 slwdvTyYxVY4SomggwkH++pc2BzOUd4XFzNndYNzjPBJTLjEfjFxQheNDI4Ow8gdIN
	 4XuKKP/Eh+MtaxKgBDxPXiRzf9FM+bZ9nox3e34mvOVKZikMyivEYKZLMww7Yjel/e
	 bkZYSzdWXgTcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B847C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287159360.2555.17287766875843876035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe46da939b22125c4c5cc74bea3d60f94126cbffc4187d40df585cb2c27e9a29
Date: Tue, 25 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742871593
