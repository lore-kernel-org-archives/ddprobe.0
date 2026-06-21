Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D46336F8F4
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782054394; cv=none; b=OZ3RDsDeYua9WbHy7OiMm0qKudz8eRVwToihKcEVzmm1Aq9H1M0hQd2VMK5qr7l1GpyGkK/eOlEJK75ta3F0El4h7Ge1ZQVyJORk+d1DOKkU0m5p19yYnbAOnygQT4LAmP+74/UfY/6mMiyFyBUUeTVtJ6rW0ImjhO8HzgXwL/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782054394; c=relaxed/simple;
	bh=pq1GRt8dVb6XH1jJMliypldtIGuQpqoS7eO65p+6rzc=;
	h=To:Subject:From:Message-Id:Date; b=WTeDhZuoozBrT3QJcN7hTwgWIHOQbAb40d/8PteL8eutF0w//82tyLGVFg8CYx02nogFF6gM3JTk/HQZPymS9v4A6heFVtTYOw+5cazU/lHvtEiG/oMdj1ZkaTIcw9At2LydgB8sTu7UiDM7wgKsQDahyOl79TkTFPkN4UfQ6cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shnMzC7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shnMzC7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15E0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782054393;
	bh=pq1GRt8dVb6XH1jJMliypldtIGuQpqoS7eO65p+6rzc=;
	h=To:Subject:From:Date:From;
	b=shnMzC7q0ECqP8xJZPhXhduHXDkaJiLnXJ7Vt1vsiY/E2I++fJ7aFdfqb3aO1N2zE
	 Skrr6v1KqYPiJoX50uIy4d+OuIvi0kNnrD8AnMrBi+ggEsPX9skIC4a2XEpbaehBYL
	 3XCLSQkbqk5RuzhqHxaUGTympYiNl6vOuWpFwTi00dhw7xKqCzbTBQo9FJ3eapJFrF
	 iQSldwYEj5eWS/el3NebjYOnsPedLSHZg3h9z7WYpysfInAIBUwmvo0oyGql8ItjDE
	 DoLGvIigUdKGM/YwrxV5D+6V0XadBv3FV0kEFijkZnuOBogvFGF6UF5GkT0Ui0Lg+I
	 CFB0GOC1Pwgnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F70CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205439370.2522.8003450587986683368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3838a1c0f4d23b95843a890f15137868831fd1032bf830210dabdf6ebfd5cc87
Date: Sun, 21 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782054393
