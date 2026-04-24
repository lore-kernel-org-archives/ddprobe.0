Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC442836E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776989854; cv=none; b=e41Hie01yPYRVYUIoYIc34y3BeCNiaIwVC2vfF4faJtk0ythkTE+JpSSx7qmXsNvzxhCkH6CfOatFFyrDiM5mwIz7c0thEcY0AYqE8w3pKFAdca01EQLoZtk7uuxpNIvDSdChAKcbIsl6OmCQRXb5M5Xyng14+EuanhZ7ggStLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776989854; c=relaxed/simple;
	bh=YE/8dWd/QQv3YxGqb+WZbXyZqX8yon0QVn9ycjWdxyA=;
	h=To:Subject:From:Message-Id:Date; b=RaLEGjBDKbBUz5MuIZsYAUyaF/cEnry5eDpsfRuCm2Ewx7uuGA6X/j7kckx0gIkCGqSmKaph/ZpfyhfGbxU7aRihx4RTqrSsM1Kf4ivPbyYlilASyCBOnVGKYi0MhbDX6r9h1Jh48a1UxkQIUkgoTNx3MDpXgdlH06GE4KbjEO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXk24Msp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXk24Msp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB5CC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776989853;
	bh=YE/8dWd/QQv3YxGqb+WZbXyZqX8yon0QVn9ycjWdxyA=;
	h=To:Subject:From:Date:From;
	b=LXk24MspxpxiAR7a4EYbleM2ICKGjCkxzQwCUViW5MGjU0F+ffH4FbTKXtVyUNROO
	 IgZdHaDclwI3A2gYXyhBoww2aEqlu6hFOtxNswaZy+r4ZGU83Wbkl5fSsDKW3/hjec
	 FJjNgMbZyibXVzTbhZfU9EQ2NDVE65zgA8j4yJcH71lGBnGEDIFCGh9OJm+gZ+ZUUc
	 eC3Kf1qEO5ye99Qya+5I/HLqYHuxohEdz+MoCWOkqROI/pjUUJqEYU8ud6K5FiWAHD
	 DY1izCtKeh2n8TI1ITci4LxMLW+NblJxUx60F+D9cLNyrmMTo7Q+PHvKUTnApqsAs8
	 RD30E8xdJ4f3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F5FDEE39
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698985368.5126.15518546440596796928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c24055a677e7de0a4ec563f2143461aa70ff122143fa4c3280d04f4a130220f
Date: Fri, 24 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776989853
