Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3332A3F1AD1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784545714; cv=none; b=UOrVROuEQBbwIY0veO1ajrEXJnT5z6Xf6WMGmcmGz0D+LkXbH3ykar+eunF6bhK6YCGo9U29XCTPY+6I+42Eq4nnGyDWNHRV4qyjCilDZYvQAtESnKAJZrh4FJqPiNagnokmKOv2RRSvkPeVfaRJXBpAH21jGqKUm0pjNky5niI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784545714; c=relaxed/simple;
	bh=y/8TQ7UrSJG3Dle/pRe7CyxWsO2VLC/jjgpui9ppNyQ=;
	h=To:Subject:From:Message-Id:Date; b=krPrSRqYIzh3L+dnwzMUsWQiTzYSIJqI4Nvhj+lwLbXTOuzNAWX0CvVVZqNtV50R7J3APHFqXXazfS3uJeHWg2mXJnLJnQE0+tAj7Ba+JgyutYivtxInfbC8cVEtwEfBfDmIQDu4FljCP23lpVYL1wb8gN0WnzpC72K2QmzezA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh0foyIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh0foyIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E9BC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784545713;
	bh=y/8TQ7UrSJG3Dle/pRe7CyxWsO2VLC/jjgpui9ppNyQ=;
	h=To:Subject:From:Date:From;
	b=Xh0foyIZwUZ/TmsHsD3mi29G5dVz/YLh8ceAKzdpMvOB99OKn+2NrT4t8PhGh1h54
	 /WRy2RUfZJYg/WDVh/ltvfYxMj99HUiKWahgpXP98deIub0IQAo3/ixe38EPFd1GOc
	 y9Lr0ZMOk+9FobmHIcJtNIwLGRJ7ZM58EfOiWINeeqU/cGmJeyggtTVzJ7WfGXvwGO
	 0EuqOeSLP7wFt0jdFtgn/7F1WP21L92dLQi3C8ObCvQHib6SW5Duo/D5tll6dq3xG9
	 ehd9Bp8LePxXToPYd5BnOKsqPzR4MxUl41Cq7lEtWrnNsnyzgWZAIGm/v8yn3IYOkg
	 msmT5Xm1MmEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0977C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454571371.2082.12893084988148682761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed6c34139227802e265c3d7ef226f5f6cae928d24490ad0ed10a7a205862281
Date: Mon, 20 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784545713
