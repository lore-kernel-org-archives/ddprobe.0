Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE912DFA4E
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744788593; cv=none; b=W6mrnKky7b7hmBRX17+DIsuXVmhpTJ3IgqQ5X3+LwftJ/iU2wijkILXHfJh/8bhWZBtWSrHZEe2UNfWTA+Zc2Niif3tQX65W9k97r0TqkSOe6uxnUPJXuTxbrRj2sesSNYugXuORkck2b27coC/5efe4mt96bJ4qX9NGRA5eEHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744788593; c=relaxed/simple;
	bh=QZw5p5iKPbcd7qo9m6EIgB4L/KB3x8hQ+cQg4VMTICg=;
	h=To:Subject:From:Message-Id:Date; b=N5BLpXjP4j+pRCR70fCZkiAae3/5DC7iz7LbNnZQj7jOtXwIRt7Cy2ZJbQl1GrkTCuuGM5EUiYRr9pQvpgwjpU2z5OkCKnF4ffgjy6FlUrDm6xAJxBuP3r1HZbMO9pmDt9AAnMrDeKh3zBJhbKkyAIgtVffXoupVDrdHd7iQg/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfQDELgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfQDELgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55E4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744788593;
	bh=QZw5p5iKPbcd7qo9m6EIgB4L/KB3x8hQ+cQg4VMTICg=;
	h=To:Subject:From:Date:From;
	b=pfQDELgADt1Qp8Y/J2pNFcnmun1e3Xo5ZtVNqGGur7PprX0ypnUdHhsUvwYNmG16a
	 pKk1RSzrjWBwuuHAf4T/rvFwGY3cqoNV+FVCtR6naWXKXQLalYeu4P2tJ6vyFjcy06
	 2HTGTgO/j25TbhTAUab1AU2ErE07eLJs2Omw3tWYZ1esX+bJ8Kql2ktXgfhSj5uZu9
	 5Rd/oSSsb1Mt+IgCT6UpKjleJ1i93TqSvjzwBxk5WEJYy2YQAE6aP+mjDnBeAFSDga
	 Sr6saOPrRA7e2o2RNrkz1xS/drwmo1Ene7Noyg/ZE1DMt4Su4SOghKlgpRKGlABqun
	 FkDu9Pem+pARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BDBC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478859366.833.1655840653470580396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dac9ebb245b7c417d145b4731a0944d730570f1e07e40790941cab80f925948
Date: Wed, 16 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744788593
