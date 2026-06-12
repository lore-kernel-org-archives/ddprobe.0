Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376C735972
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781247394; cv=none; b=fw+ngaYMH5ZWb1kKINyZSXuVEgzS7mygxoInLNMS4akHiseYInz5r2JgoN5T2mv4X9FfNuNCoJYpXdkEJbGvVOWqhPyA7+UMJhBMzyJBAJjtz8dccFWMYxiiklWbKhCJYp0ec037uAaTBi1xcaK4IhyFiWvT7V3s44bdUzI/5Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781247394; c=relaxed/simple;
	bh=hJ1BjOzIexGwN4sG07ZtLW+/n1JdDVYxK0oiK70kJBY=;
	h=To:Subject:From:Message-Id:Date; b=iOMhIzmbjMlvSAWfZg0GOOFgkN3Ab5HrEsMGT8QygvRqr7xZG8gaV/zmntINCo5js4kFfLgSQ/nUI2sHQ6NJz5z/yp1NyUhqthuBrwj1LNEo/nqR4iEbshhY9Grua0i4ffNGVpQDRvg+EoeZw+RehBFe+aEA1MM2/tL7c6J5S5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBGPIIF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBGPIIF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A9CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781247393;
	bh=hJ1BjOzIexGwN4sG07ZtLW+/n1JdDVYxK0oiK70kJBY=;
	h=To:Subject:From:Date:From;
	b=FBGPIIF5EBSqOUsO2NTQZrO+jZNHYi8iGmZUjqZHviZNuN2jvn8VuV1BykDl6YblE
	 5xJsUETgYXEv3ma246V7FiE3JmbSpPCSB/0aq5fVbtsMpF4KBeI5Mys1Wd6QbnZaYx
	 SRSG8wp/ygc4nMI1535P4DXIP9xQ0Zq2EZ1sxq409Kzja0UIYZw4kGahEEGiTsdiCd
	 4gJRZV6r54mEv6O6MN3jiLdvhN05nYk3w/DY3nhMilR648zO6RR3soZxkZIs3QY/IY
	 0IHEtlQE5heq1j0XIhxhFSGn1UTd+8RsEi1HXy2TdObLhC4zyXcSAgQu0DUo40GwW+
	 X4cQxAjpD2J8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3754CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124739372.10345.16333268599878347724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0144de19b2d3b0bb329c7ec2f59aa669987c37d692fbf5ade0c48f9723e5e7
Date: Fri, 12 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781247393
