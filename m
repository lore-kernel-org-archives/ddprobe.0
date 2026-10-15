Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1A53E172F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792033234; cv=none; b=k/GQFKoqN2KPjQVhLF1/Cn64pxQNmwUIdur3Oo84Qw0hcqlVKgM8t2ulh//BKuqw0g0Z9g0gJf1TrDlvWf66CMg80Ga3m3CnIO3XriAYTYQn8Lx5EcU7R/XQaljmawhMBA0OkdEZtVCSGmJzJiJQmlJOyhl9cYfBQXDlxLNHes0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792033234; c=relaxed/simple;
	bh=zGkU5wn46I5mdg+Ep6mGQTsnAQ67tWJazjMpjWjX1as=;
	h=To:Subject:From:Message-Id:Date; b=aonXEd1PkmHLNlF80n+9mPyqlZnnyVQQozKS/5QIEoPuahCOg3OyNbTdKl4pBInfQNeJEg2zKnx93a74SxwfUkBYw6YhoxDDbit1yAqm9l8R+ihyk82G9V2UZoC9+sJeITS8xrjv2Cb4PVZagyA4gUrgzLjupe+0Tg+Dsin315o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7z1r9JT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7z1r9JT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1805C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792033233;
	bh=zGkU5wn46I5mdg+Ep6mGQTsnAQ67tWJazjMpjWjX1as=;
	h=To:Subject:From:Date:From;
	b=p7z1r9JTD8uCg4CpjVgcmKmRnuzLGxpI+jFmHOnzJCqwmpn+R9eZRpyR7EdBBAky/
	 kBOjPBhjX7CXIcm/aXC+7BnaEBhmVFsSxntc5EAC0AKW6SOqXdO82qCObBd0l/0hWb
	 8oHIv5HjZxPc3alzt3E6yJLFNwPxn2b9pcL5Sxpot+bTn1hR3VU0RuZUf+24GVVf5/
	 8FKqlOn6OHWKzVqy/2myegTG+Wi315iH9ch4BKQt1t+JdZp63lSlVOEcMvLczOY8b6
	 kRcKvd9irRtTXl+lrBxbEk5gsHu0ZeAHQ7vquT2UYvZNMdjLKJxzXFu25ikbhf63m7
	 oVNl8pk5IlQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C16CC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203323374.19659.6969729652431174693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daa44fc386a059ca7da91fc9f6829fcf0897bbe4230ec7137d42333278090da
Date: Thu, 15 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792033233
