Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30171156F20
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771682694; cv=none; b=JUy4YtVwXUdQ3CC3/bR+Kb9psu/bIgY/p0tr5XrHJoUStMAsT/X0pnBrKeh4gzqplyVnYmSt5lqdvdcGJlTE+e9+MdB7Xz2ax+Nryg/eAQyAABMyfEDR/1GrEKl/KqMDfm7RL8/Onyab2+tMkeSIew4t73x4vKN6DmHxP6voMI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771682694; c=relaxed/simple;
	bh=Ys5tTL88J9eSMEsZir8XDGmQOr+635x6PqAGBkDw7QM=;
	h=To:Subject:From:Message-Id:Date; b=tNvJUtUmltqy03hmcqBdaZG5nrtysdhfkMIb5aCTl2RdBri8jm9CqNUH0Zov7QGzMmLlxuDDwwT1BWh2F5P4xWRroZmZCinSY+UqlU0NWSvYL3oX/M46eMuzMXwn5xO0M/kn0Ey4Nd+D1uR/YTaF5GRX4c6uLrKOL/wzO+KhRYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz9tg620; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz9tg620"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16ACC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771682693;
	bh=Ys5tTL88J9eSMEsZir8XDGmQOr+635x6PqAGBkDw7QM=;
	h=To:Subject:From:Date:From;
	b=oz9tg620W3mjalxQWfhCHy+uKPXvVJZaXrP8LPZDpckbvSzxZBQtROaUiOrdeTt+F
	 J3HBSm6CJQa2wfxhf9eE/JhNpT5AXfpEO1nmQVCxVtjIxYeXMJ93WMMPSTQAdzz5aj
	 Q+e7M2MlT5lKC+5X7ekPynun5w567wZ9VIRebCffrO3AAmNawWX9YFPvn8ZM6VJhw5
	 TpZiU9fM07DHTCPMIce0SAyq6N98AaOwblt77eND8/9mrI3kRWVjj8tTS6Q5ZXrt/S
	 Fvr+XZsEavwhzekRK1044hC3RZ+c+QNoiQtrkm0uhY+4hPkDL9L4eRIFu7D2Ngmlew
	 FTd/Zm7jh1+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CFC61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168269362.31937.3474584811279714864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef28886f0d0e0be382b899d7f6047a7457f230e5ccd734b4ee8944092f86a647
Date: Sat, 21 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771682693
