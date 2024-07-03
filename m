Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE313C3EE
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720046123; cv=none; b=LT6unQAcueW/QTy+f5nmtHj0FRRQ6gpZSHQeRc8wcWGi5YzFIIt4Ki1pjg5wX4/Sl4CJlC6FvEnZcaAUX0wEQmjnFZpMaIFHdREM+OUQP34tYolF5tfvjLjWQ9hSyfQLt0cvhSHk/Z6rJHwKLx2MwHVI/efnplnijbINWWBTqyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720046123; c=relaxed/simple;
	bh=c7IZk0/FCO1YNbGw/W1IkVKvxE5CLR64I6lp5GpaJ6k=;
	h=To:Subject:From:Message-Id:Date; b=bLIheblDGi7RmVLJ5/Fg1FaAQ+qw5oGuU35l7JkV5I17wEGiOrud9wjyEXG4b8e49Az7p5j1PJdypv2SNW0owA+JCpACTuoEgOKanLwvRFY3yvEf3yU/uF3L8Y1I9CSsfR7/EblBqx9l88xgDZfxn9J0m4D5de/QBbSiK8rwwRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRKBKFp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRKBKFp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D526BC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720046122;
	bh=c7IZk0/FCO1YNbGw/W1IkVKvxE5CLR64I6lp5GpaJ6k=;
	h=To:Subject:From:Date:From;
	b=RRKBKFp5U7SLmk+bm7155+yNFmkIWMYP/0iirbVdt9z4WF4QbWCOYjOZZwPG7MhDc
	 x9tH12hiPumM7tr3nzoKDuk0kkSsa4G5p75aMshqHDlorBG8d8pfxC6Ow7U5Hl4rmY
	 AI++3dqPJrawQO8CVlNnKd/hrJIU1Xca0zFslwEyYrFzcbSplx68psSttQrOHivCEt
	 NuRK4BAARH1sAQ6a9ICprmRZPsZSGAYflP4ZU6eqt5g95SHhCMnay5A6LzThHj3bII
	 LD5t39zPM1C28LtE8NnkCOskLqKeaHY0Xib5qO2cfCfl1dzT7e7vWt4j4PsEVkTkDs
	 Hjre++DoA9E/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0519C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004612277.32751.3054564450440654506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c736201c997137067f0469ec62b0edfd31dcb308fd9482027b5eae78fa93fa
Date: Wed, 03 Jul 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720046122
