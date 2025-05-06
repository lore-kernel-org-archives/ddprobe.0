Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A419DDC5
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746563994; cv=none; b=BejJW080I1em6OBoOcicpNNqCIP+jhlCuwWubZzuX9UclqdJMUO+dFjRp6w5ZL4hPEfJAWZ7B3eApcOnTQjED0YXXVbvoNkbcgBoQQSbBYRrnv9ihR/u4NXVavUh2PaA9PwA/rLyj/tUoibVqbRpwf7rzgjSyA0BOGplK3OW+Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746563994; c=relaxed/simple;
	bh=cIjYOGMyL2Pm1vDcC/wJOPO2YGeQbJkQG8gaOqakfSk=;
	h=To:Subject:From:Message-Id:Date; b=IMyWa/1NOqDREw+j5TdF99n4fgN1EbcWcqvmJPw+RamJPQ7E8nycvOGO/G5gIH4EIRvJAW7Kxs8bLic0A1ajBxr4nhFIl+XwINRFp089ytPTC3jixVzOYKTEcNLXOX65A2Hqm/yI5CY9hm9xDltSmjJmbVhCRN2Qe3AB4EWPtJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itAdalYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itAdalYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8F1C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746563993;
	bh=cIjYOGMyL2Pm1vDcC/wJOPO2YGeQbJkQG8gaOqakfSk=;
	h=To:Subject:From:Date:From;
	b=itAdalYekjqRGNGJx99VjzAE4t5yHb1Hk/iPNfLfoKPMT8oFVTL0uRygYIcDnOeO7
	 JALJ/W6AhXDWcAIU/RAQoQRkYfE530Fs4RbZxEwq/LKFWS8beX0dQzOA3VKIRJNy2S
	 kAjvbxqcvOUKajOnZSmSBnJaWpRvZZ1wd5xse1jfYbRV7aNvzw5ks/yDQLVsxgL7nu
	 nDyo+nThRXtABvtxwyheqRRD77FxHmaSqjG+PgZ/js1CvpTKadjmAfPh51DxH5Xlky
	 cwcWg1c0YwOaDN9EzsLA2Rr/GIyJT4NtnUJtk7uYQmgqHhiArtQk1raDAvA7vNMD2u
	 3GBRSyd1PS2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC52C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656399357.10004.17601705001583902420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8881207fd6ae9e4e7c70a932a710bac23a517e588806bcca6d03087975917826
Date: Tue, 06 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746563993
