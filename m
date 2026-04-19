Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED3E40DFC6
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776638854; cv=none; b=rG+Nnq91IiIgzbmJ9WdqkAL5Oac5P7k0ACpWWbWdHm+jvpdRMIBIWVyATQavh05hU/n1F5lKofrESnnyAhqSG4q9X7seVLg2rDdl7giKaM7xjl6WrlccwYr+7Ix47szFxBHU3IKQG6osZEtQz6FTuciZl1yjaay7Ainqjrjug3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776638854; c=relaxed/simple;
	bh=60wCT4z1HHPNhXPJGtxr1XuiO7+54K6v7K5xGR0FIXc=;
	h=To:Subject:From:Message-Id:Date; b=XotHEgyGsYQ0hG9fkvZ5KEcHS4HhyQ7J1E4RsWrzxJ579mD9504BTSmQGJ3BXyl7BhhVWYJqsHlAKnJyYAMMY+MhXX1sZV+wUzgv1vObW0mk4tkqFmEr4tO6zn41zy8m6tZZIf69QDGmRgqaZz9vA81Do7JvqzywsyfEnI0JRSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHI8wkY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHI8wkY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A57C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776638853;
	bh=60wCT4z1HHPNhXPJGtxr1XuiO7+54K6v7K5xGR0FIXc=;
	h=To:Subject:From:Date:From;
	b=WHI8wkY80rQXyTBgEyx/rlh5BDd1Xwfa0EtR+5PzVKdTsMSN+5jvvGJyY/qSRVNCg
	 grytNYbpBo+0hs7Dc1u5nX/AopRc9ywXn0C2lQqFGzb63ZSM1EKOOWi+7GQGOnSiRr
	 TAGQI7gVJyvgl6M2TaWZrZj2BKL0JOVj3LHp+Q/IAtYn7qvmHCjtVuK4Y55qaCpkPd
	 3dYxg8YynVTpDQ9wT6q7FxjflJomY5CAXa6eOmEinfH0L0xFspV7vrq3rdSg8+VnFo
	 Rx/XxEp1C2rE9npvtuXrGc7B8oRoANOa675vOBPvg7YNQAF4aY9eQ9E1MKgvC9+ElL
	 cz6KdIEWpJQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF1EA71AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663885368.18301.4376835749324745718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88c018e30d8c580be126010fdd9b18825758d79170ae44b76cec54510bc5ea3
Date: Sun, 19 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776638853
