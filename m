Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3CED502
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712019497; cv=none; b=UbmjwnLXbHftHQrxfqvCwDV/TftR3XTpyBnzENWFUGLT9V4EsNilaj+iWaHzbY1/hnh/3YmnPfalRcb+R9W9eBbsQ2SnQzsn5XHhsFfz5LK5NxVOgCEF4Y2PhlPl1ds9IydxzcvMlYYLCndFh+3GeiFbNV/U625UUJbihLGkpJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712019497; c=relaxed/simple;
	bh=ow2iBOXrkRoBL90h4ZkrPwrSM+soznSQSOIelJaMnMk=;
	h=To:Subject:From:Message-Id:Date; b=jNcuDbBnIJYAweaU5ZaDXb9cz8QRnqjqiQsVG2qo8kCDEhg32gvwfOX4nIFF4Tf6veK7liehCkU2eqIeWvDvZKVpswcpE3Ngdbie7NZuKyHuQ3f5UWs5tzvg47uY8xQjFL3luKkvCHfMqAtiyi6HdLyjO9R/cEImSyQSwQ/DVfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsdgpnS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsdgpnS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA2CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712019496;
	bh=ow2iBOXrkRoBL90h4ZkrPwrSM+soznSQSOIelJaMnMk=;
	h=To:Subject:From:Date:From;
	b=gsdgpnS0hX+ZkA1ylLQtIHBeE/Lwsk3A3PFIWYbmsRvdp3iiyISnI+WblZfqh4pkb
	 caZnM2yf78ni1q8rdPBse8fRqOXzDM0TGBUG7dX+aate9BBaSj69MYnTbhv/VypSWt
	 qtH0evnunvhO4GvqEsXWI5kHkACs5cz3vVYLqpCHXWdEKa3bK2koYjVkw45GvdR7VZ
	 al7A/wq2zprasOOlpWYlSHhwFz4ufTwIRNBemSWYXInDcgxfCP0zuDmwFD45NUHAFN
	 mCm0ciBRikO0y4gW8WptZ8DJx7mGG1Riyp2NxqnDejlhu7MVXPRRixi2d9aH+5q179
	 YzaYmCtHHKXJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C751CD1288
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171201949640.2309.15145984891670756215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c2f06caf8ee8ec0bdd5a9783ed5b727e28322397d5b1a271f8d89cee6c9d21
Date: Tue, 02 Apr 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712019496
