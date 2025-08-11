Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EBC8F6F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754884795; cv=none; b=Kc3sx+/NmzQAv8U4NYeXTvNfQwqhFnFY+7pe7+3E2NJXYguyzwiEblGj61H7bzZoMGs3HAdudLrsi/YUbMXvw3scUB9jL/ppJ3VovYhitFoQff82AXUg4vRkpGfTUCNAJu5tcOwoyoHsIZJrnGpB5qPTkVSYU12hPYdrFcBmL2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754884795; c=relaxed/simple;
	bh=U9/qX4TEhtVY/JGp0lXsdC7b+e4MnotsiWAfPQL5Bns=;
	h=To:Subject:From:Message-Id:Date; b=Yk14ldxsEtEuNoADVevjIC9ZfLYMXryuW+MFhFwUj4zPI2RJpzBpv0FEiJsSs1xqMLi+DqR9tllVwA9uDv66jaYZNlVz+WThGdLO9WLdbe+UWKg2YF2bYt2a3BzT3WSojlm9mGdBQEPFQi59AADUxsyhJvDJnZDZMxpSg5WG11c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAUNw5/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAUNw5/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFDEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754884793;
	bh=U9/qX4TEhtVY/JGp0lXsdC7b+e4MnotsiWAfPQL5Bns=;
	h=To:Subject:From:Date:From;
	b=mAUNw5/w/VcloWt7A2vvQWPaJsesVQ/7rkLCrUgJUKfdcnZzs5+RiPGjeXGAvCp+6
	 TuRfuf+8DbYhhi+8tCoTbCJkUu+4W/wkc3avc5bjsiAehogI0ODApdjkzb/YeYoLp+
	 OLZDwLEu4LjhckxQ1P/NuBaoX/ZsPfloWYd/nJzDqpwHalYL3ldLG4DQGT8z61y1Dr
	 QDRnQKzFOMtqBGmnV+Et0UYTXXLBiuOKAuz8cSDDI2glBAwlMQhd4qW1VHkk71Z3Kk
	 gap1QOPVsdUnjxPHtrbN/yxYMzxNnzRIsx1ELkF8TPsrx0hSRh9RBNu+mWBl4xboyi
	 zJhkS07JCfa1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD8C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488479357.9132.6117460847841504146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a728567b4925023c75ce79cbc2ce324253023c579c14d6252402c11b5e6b0cdc
Date: Mon, 11 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754884793
