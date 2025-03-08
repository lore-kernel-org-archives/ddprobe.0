Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428607E0E4
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741451936; cv=none; b=Cz0Pt4JuSZJrIl8kEghgRd0E2+iowpq8xupH29t12Ji3VWfBNmdoN7krVUEQqfx2/kGEkJse1mMzG9ZYuw9zF1M0uq6e7C2zPuXnNkG8aBVRBtImyb9mric0JXSdrLkf6s3cWn4XjgQHRVyoKBkqCZ1iKLC/+RkSpb6/doR0ijM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741451936; c=relaxed/simple;
	bh=IyyreFeese8wCR5pf6Wtb4uRbJ2U5AMKq6LYAOJRUp8=;
	h=To:Subject:From:Message-Id:Date; b=DpMLLfTwWkAtcFZhuBnrvFuRvVjbtVv3HjGLeAQCiG6duU38QM8tyAbeXHrblOIZDJYvy3LdclA5d4tDyHAm2gdh2ORhfPHwVfGk8UZVj0hUowDDXW1pL9zqSlk+SaeLM/tuQ/mG/52ACdGKyLD0VqcyXRrY0nYoauLdTyqSauI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7CYTXCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7CYTXCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FCC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741451933;
	bh=IyyreFeese8wCR5pf6Wtb4uRbJ2U5AMKq6LYAOJRUp8=;
	h=To:Subject:From:Date:From;
	b=G7CYTXCPKy+VIEvlsMw0aGvxkf8bS17Eu5Uy3hMZR1Vxo8tUAxlO/2H3dKYwBH84+
	 okLcPIdQbaRwpznJCCx0kBFJyln81Uc691dHA/2KREBebGL5LqsPD+Paa7dnAbaXDr
	 MBbEyx4yMi2KS1in/W3A/CXT4SlSgA3DZ+wEhVSuWo7VuR6Dx6q4RSVnLfkhQAJDjy
	 vKt6wWdXaQSHrEhs77ZLBWxLKNwzvbIzE7rjV5kmsGucoAnIN8zAbGfV6+d85k21i2
	 3KFN2bYUN/LcbOoqmZrX+s6P/x6SrV81AsGxKMIFjXD9+Dn2iD3lFzIEURcJjtbNxT
	 Le1gtlhTvYwrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F8C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145193358.32344.10370087995512784768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7f5b5506fc3cc1dd49a9288466d966d6436572a0f2eb22d28b377f29a7891e
Date: Sat, 08 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741451933
