Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0941F4E38
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741082334; cv=none; b=SydjajCB9CVQo47DoaHjfWVgxvL6GEucn6BLIWfDRYTcOwM+VJpD8bUTYzH+UeF5uUK+3jj8z2psXF2T82IhkffYDq2peyvamKKGrN7cvdz7okYmtXIRjnM9Dm+KYwMwnVxywQhqVjq03tJQbT4QXv1B0wEuLfhWXYJh7awspRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741082334; c=relaxed/simple;
	bh=ivUgpxkqypRzGwzXOprSvYS/eNigPtkLCX7Nvoh8T80=;
	h=To:Subject:From:Message-Id:Date; b=RqnXm1WWWAou4SL4BwKQVrBAczxXL48DU/1XTDYGrgCG7RNsr81m7bI5vtDC/WgHuxXbtJniy10mfynuYarRD6xcTPAh/p92GOsza7AnVUvqr4FjmB05Oqc/33bmQYtCy9KhYP3uVn5lT6l9yENv1HvGV9sR+JcsQiIu0+RLXj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB+zRwIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB+zRwIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A1C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741082333;
	bh=ivUgpxkqypRzGwzXOprSvYS/eNigPtkLCX7Nvoh8T80=;
	h=To:Subject:From:Date:From;
	b=UB+zRwIpILhEc0Q7vtXA8aVY/XOJHynvN7Dq+H7zZOQJwkNsEscNODV+/9vzDiFFV
	 LnImQNV57SMu9Gjgq3wKoCrCBxv8dYW6PQezsTplLVbEEEhJJrEXkwjY17kaNeJbVj
	 zmoV4b30FhWOHg18E6uUNs4iQ/z6dLrfM2vFwrEurNwhAgkqsPswXakJIBs/RbLqRj
	 OvPOSd8YzMdiPd6TD6Jg4k+fHh7NLTK/ugZVrqbO/p6/tB8gZ5mcaLTcX/tgZtKL5F
	 VtBmjg8XMEUzHlDJOo53IgHaVqwInzNQ3TWZ6vEMyUtJacUiQB8MgTNJaMXqAbfWlh
	 tVvS3Vy7zciJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96773C282D3
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108233360.22111.6339621539193799770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851e771a42c035dae30230b2b49733eab5d9d62dd89b3d9ca9a2d3b34d450ba7
Date: Tue, 04 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741082333
