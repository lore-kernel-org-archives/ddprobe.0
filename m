Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E2AC133
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716723863; cv=none; b=JiPWmV/XJrprltuPdvJyImVCeYWFPl2Iw8SnK8O1SVndRM+3chHcdFPVNGc7UqPzKPgvkU3u5sRYZ8I4FHknXU5TglLKN6DMzwb4ayiCP073l4IsxbVAEXfSt1eL06p4HBcOys86GRsMH3wC2IJp7qb7qMDLZ0JienJsNVja3Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716723863; c=relaxed/simple;
	bh=Y4d0cGHXGr5+trrFN08rnhFjCxke0Is+dPXFg8oGMr0=;
	h=To:Subject:From:Message-Id:Date; b=YZklV2qlx/CZM0NMnQOCiKFlSbd4KbDXmkZZ+bCTSaa29fM6ret814xUu9csaFz0uB3aY7BvCvoqss9vWNR1d+/AVlBPzjCubxe7fWO9XVYO7fiaxrjypdyKZqolUJalWq/TZFar388G7GLNewCWAhp8UdZuE4Il4WY3zFwn3/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgHXuQnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgHXuQnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD033C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716723862;
	bh=Y4d0cGHXGr5+trrFN08rnhFjCxke0Is+dPXFg8oGMr0=;
	h=To:Subject:From:Date:From;
	b=qgHXuQnYoPCkqs/F0naiOyfNqcFVl8T+Yb7xm+9qqc7hZPurQOHebRvGUVDpGatOQ
	 wUPUnjQcudmN1sFROJXCLqZmRardSyTiH+cJCHCebzWh1YPwYNlKSG7Av0rubzV+Kj
	 aLs+V9oHSlKTLQNX7Cj08Rbyu4kdDh8q/WYSmtPozkxD2QIkoqUQDLkuf6Il0zj1yY
	 DqJNUyf3qjAiaSvOy4LaoAIk3z7UcN8dKJ8Qu4dqInjLxNqNXhBq7CHxoqVXkh7T3X
	 eVdfNC6QwKFel1uf5OCQ3bqXbcNXA7Sca4+b+uUrBBnGHAXcqjpJW3vKIbGviaTw5f
	 71cIbOR6DmQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98A4C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672386278.23665.4484148281220768675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc07b607b6c09f77e873bf528f8712abd889e5bfa3949486a076eb06ff82958a
Date: Sun, 26 May 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716723862
