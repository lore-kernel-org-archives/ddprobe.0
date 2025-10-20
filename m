Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C19D2F1FED
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760999394; cv=none; b=F43OaunaoSZMn223F4Hc/RqxKi2PJevDDGw3Ws1mhHOwsUKyIM6BrjLyseitMcytFlyNArCOolDjkSAxa5Mz9OEdb2aUyORrAfuHVvDfKMmmlwR3V/V0iwcpDKoLU9AgNEavxoxiH/utxGkeO4r6To1T23vuRS0iWNgwH8zvQzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760999394; c=relaxed/simple;
	bh=7RNnlXA5FXFhOMJjN5h9Ze3s/urhHQhQqqbvhZ99uRE=;
	h=To:Subject:From:Message-Id:Date; b=Ks/Uue6pavLi1meYbhf7Zo0lcWxdLo6j8bfx0S5iq5ODZjCj7cjQY7s8yA6CMhpE1mIHZgfJtsuEgXAh0ufTExGkmMRRbyW/4JECMA7OtDwqcxEX7T8hlt1mQJPfAs37V6i+YPzP+CvdQ5HLJm9/UkvlP8sarwfTVAkB5nLlyE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQCnF1wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQCnF1wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530DC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760999393;
	bh=7RNnlXA5FXFhOMJjN5h9Ze3s/urhHQhQqqbvhZ99uRE=;
	h=To:Subject:From:Date:From;
	b=FQCnF1wzJmLgRX4ZElrfrzDgkBlVNWklHK2UDeWFEPWQwZg7g6N6/BfG28V1ciKbZ
	 01vYkXta0QAMKfemzVxrBkfH2vhoxhNPPO7sZXMEO51xn4EMyGxHzUiIMWn2IKdgiP
	 nPbnQ8UdjS5mDbUKHxiJ3WIK19teiMu3N4s2hbgpZ/OgOEL3wMotlrwtgt8b+PzF3B
	 /WaW0Fj5LGYP7M3WNunffVKB94QoMuuuKIXCd+Emxoy97nCU7nAqdIL74if8pgTfQW
	 R+/qG1JqhxfKrDocM3dOhaVTJs587MT7/MtlICoTaEkuVvmLmLWd4Umh1meXgpFf8z
	 IgSuhsFMH4SkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129FCCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099939358.5692.10897698106488758286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df4842766c64a7202532d90179f236eb85be7fd5df6cf666e518c2010f99857
Date: Mon, 20 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760999393
