Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3C31AFB05
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727444754; cv=none; b=XT5gfO1pSNqQ8Kgoc2ypu4G2DgQr2lCyzCWN5azkZQcVDC/Wg6BU6cxXaA5xJ13XWubmWg7GulKaxbXs2e0VnFXF6dhqsaNDru6IRhFQYOqt7UcFxt9egZu/AoAAIZeC6HpYGOc78vW1jeX+2MercTEzh8fC2tdV2SjYiRN3BqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727444754; c=relaxed/simple;
	bh=/dfHFMkwrR3MF33/jH0At3kSOeG+bk7O/ADM9ESjp20=;
	h=To:Subject:From:Message-Id:Date; b=juvOFpOYuz6ACQtuR1Mxjbex+9YlnnmLnJ61oQfH4GF+viBdqPHu/mB2ddvxybwAeEUOGUzO/A5Uk4Xn5rfa/GKB7IAneGm9YUdmtFfP4g4zK2ajHFo4Mb8KQ4DQcvz5XdUsk+DUDmmRG03eyfWtQB29k6QR8guZ9Yke38EjgoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3QJ19fK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3QJ19fK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823AC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727444753;
	bh=/dfHFMkwrR3MF33/jH0At3kSOeG+bk7O/ADM9ESjp20=;
	h=To:Subject:From:Date:From;
	b=u3QJ19fK7awOzcTrRtI3zJ7A5/2XGXu0qIzJsQKhDXI/Ro+bIex5/sa3Gp0d92drv
	 fZawQQM6+vHvBASkIuRk6jmzNq2gg7UVR781z6i4HS2VWH7v05MJPdqUeB/NDv8FKI
	 YKJ8UOi6R1n/g8SdElEunLgSPfZL04qN2SW1dYfJ29S3tPS8BwU+jmy6nKLv/Rs4Jl
	 krDgaUERS8kcqf24jkAg1HoPPb+qZM6CJJ9Yktw1/5UUU79rIQLk+4UA1NUxXvtRWh
	 b5GdH/Bd9u84SsNEDC+cLd4E49JZdvw8vCHS+eXh8cHrr/PYFmKiMyAi3PyUkNVmcb
	 MlUH5G3+PFr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D5CDD1B3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744475360.19126.3241206517953576569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad68824296bec2940610bd3d2d21271ed2b5af17812eefe37ba79ab8003daab
Date: Fri, 27 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727444753
