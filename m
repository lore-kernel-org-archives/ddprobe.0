Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC3529CF4
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730989554; cv=none; b=e0Rxyt/nEhpjT2DB6Z5Ijh2kz7vEnGDo9XILmkkvszWC8GnvpjfbDrqRhC1KFHP666ZpD2P8T7N+iJO9yu68exPfacrIdcbi0VLLkvyanr7mKkgTeI3OoN+qDfPD72QcqB1zqvWi5kd+kjgfI4VygYGk7nnM/W2OqM5QXzN62dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730989554; c=relaxed/simple;
	bh=d13W3jzAouOABXQeJl7BtbE1Q9wA2mbU5ChrnClWcaU=;
	h=To:Subject:From:Message-Id:Date; b=BDszc31n30+k7hbbZsEepAYX1a+g9Z+6wuH9jKJ8uU5E5oAOQ4mHdEMyrPuUmgFZeSz7+WVrXWVaeNvW1hnrztaBW2YkJc+e0kiFXY0v9wYepQeM6Ue/hook1+EPRUgJ8EeMk5YCl+6wMpwrkdLp4ag4KekIYNGNRrtq+qSJrKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlLqnJyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlLqnJyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03E2C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730989553;
	bh=d13W3jzAouOABXQeJl7BtbE1Q9wA2mbU5ChrnClWcaU=;
	h=To:Subject:From:Date:From;
	b=XlLqnJydhjx0L/XEuJKu7q9CCn4inT0s0YPCVjyqaD2y+z+5NMjQxt6T97D4zSBBB
	 KuH0NOor1Q/jlTAoAe4sR0kh9QqiWy6b+Hv9vfgkO9LGYxXQIEh/Luiw/Sy3bMHIX2
	 SVP6jXi8ZDV/Z6Woe5yoNgk9C0UbWrVe8fMP7CSc/aEYneIUkiRot3m0hbOobDHzLI
	 yRc818vYWBVDZ6GPQT/liP76VGBwp/uwYaRNCsXx7o8AZfJLSOTerZmaykYsQpVd2+
	 iqBnypWmqXQOwOsztnepkcYQ7KXGYPpn4+6A3+Twt86ivst7Ka0GaGOWWsmb/Dnt3l
	 jJrzQmGw4F1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC11D43366
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173098955363.15261.1981171588195571695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea96d2323f12fd94209eb4a5c87fc06e142cb428b293eae86709c148d829aabf
Date: Thu, 07 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730989553
