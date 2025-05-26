Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4781741
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748225994; cv=none; b=Bg7m51qrNksGQ6sMpk6kBzW4UEhZC5/5+RiQIy4/S38jRmlSP0oHFK4vOdK7lRw1AHQByeJUaC1yc63X5dyv5ncJxnX4Dzc3G1Kt75vYTUzo39uIfYHWyzjfYIWJxcJyodE+uF3TQvWKPhTSfEq7GoUkeI3nEJeJpW3MzgR3cDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748225994; c=relaxed/simple;
	bh=kuzCp5LE9xa8PJJ1IzIFJr1HZdfhDP6hJ209FaOWvpY=;
	h=To:Subject:From:Message-Id:Date; b=ZvAI/txMYgc1YmyiCypuvwfhC40u7b1Bj/ZvkCLLyVxzEkzycAbIdjss4F6WMa1Gw64CKm/l29j+8+qCRjizI7PlJBYqMdRhPUck7H/NSpF9b2LKILwSifbabFzGDjXM9tX24cTn36pZTttt5CkjCw6aOnrt+pmPbT7rAviMTtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgE2e/Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgE2e/Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1708C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748225993;
	bh=kuzCp5LE9xa8PJJ1IzIFJr1HZdfhDP6hJ209FaOWvpY=;
	h=To:Subject:From:Date:From;
	b=kgE2e/NwQL6rW53lcXqSJMD/5aUYBnh2485vL+zZpTMor34JCh+6QCfkU5EAn/sJS
	 ltCGZkO1atml1J0aIqOk+gub45EYdvXQd4jmdvS1kjAGnbCCU5vuMiK1JMURIAh6VH
	 /LKoc0wC7nwyXTybiM5ZgyockaRONbMRMZkZi2Oy7PmAlTA3NtbFMbLaNfcyZMRENJ
	 /VOx03bY6GZAEMBGzSWzDNVj5rwvlcJ2yQxiJQyshTmeqGTXrgfVu2iI6Bl5YzFHcY
	 pcdDAyp3jWc9fxL1r/QCkt3rwtxJSP2P7HtknD1SJ2G3coloY56bwtPaxaaXFpdtV9
	 oBx7XijQfkPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDC3C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822599360.11213.8142429129999020854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ac7cf7e0a5aceb69e01a78c15e8d56280e8a7dbeffb8d8bf501f8d4d294f5f
Date: Mon, 26 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748225993
