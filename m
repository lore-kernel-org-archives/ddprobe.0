Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E91221C160
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765896834; cv=none; b=VjshJppMOS3rHekKfcK/gZ3bThxJzQV9NP3dI+CydcOFhFIBEEUmBrVaphHY6EM6ob2g2e7G67Y3fllNqX3VuS0odg6yGUWTnEAJx4Zcp4TvorjKgf9D5vtsNTCk0e8qULBJSrmJ40oCBJYidGqeeu78Kkan+LZ7MfPlXhvwvtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765896834; c=relaxed/simple;
	bh=F+Ygk3RfmZwhNNQ8/vme1VGPauHnwFPk6/6CaGKIDbM=;
	h=To:Subject:From:Message-Id:Date; b=JPg4FfwOo5hcgvZ4kIWPe9Uyye/dEY06w6NKukHsyemxrqaPVixqzEySc36Wd9QFWXLmlCWhQtwhpKirYL1uKu+vkQZPeRqqvkV60f46b+mignUADLQ9nsVBDlmS7w78A1XcuXBc5QnefM6BgIV68UeaqdR3XC1Mm5II4/wozrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUxZod/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUxZod/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4B3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765896833;
	bh=F+Ygk3RfmZwhNNQ8/vme1VGPauHnwFPk6/6CaGKIDbM=;
	h=To:Subject:From:Date:From;
	b=HUxZod/DJh7DLuqMY6zhosw424+HVSDTUjU6fSmKjC1qSH7jPhOno0QvS+h3G0sLj
	 ct0RY7ABM3fEufmLjEd4/HH/Yr8i8kCcmHLgiTp1skz8il3KUT87FqKwN0dXSOr8PR
	 UYGPlLNzbLYLW0q72ICygyjVNgSaQhxjWEBPL4c+44t3nVVcg+TxpN2cfeRzIqsj2U
	 hBr8vSGv3b1WoG5h5MLIb3v/mKIY33ymUN7NeuCNzKDqF7TI+w8H1DDXW3LSKUBU7h
	 8UzjzuFt3PkhRZeAJdcBQL1V0I3sVhsgOc0vY28F3uWm9A7j9Nn14NzFYJ11T2tdWT
	 WFzznnZBY802A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FABD609A0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589683361.20597.14154711180188502551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c1f7a9492d1d194c3b35ea2a89f0c6727a79c329a71c45953a2b920db10be1
Date: Tue, 16 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765896833
