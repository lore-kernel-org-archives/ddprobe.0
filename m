Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7672F5A
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFED0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677586566;
	bh=Agw1tKw0Xr+frvMWybdZnYAQhIExg4gRKJBR08rwDSI=;
	h=To:Subject:From:Date:From;
	b=TRnkTRhuIdijlk52i5knDVV1ayLnMzUUgKTOQOJ1oH6TPpsycanasdylKKMizLSUG
	 1vSdQeUITxUKnD2OlrnDOfJjZ/dSqAjD1Z7RV5KD3I/e1urtjL325PDniI+6UlqQZV
	 3FPWersfGsqLSRWed4UDSpMiVqma5h4dnFsR864jDhux9pAXAJLwX3Bz2uzdOpj1dJ
	 KiL4JfFfMu9yptgAVIXBksd849g7RUC5rQ8rraPwNhiavmyijVRKFgZyWwspfmCWYv
	 +nbyXNh1r7fa4a1mpOyF/8/tBBxOUAOeJh9hUoQs0rvY58GU/stXIChp4SjxsG4ZYO
	 tJtIskGghNBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2752C64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758656585.29715.7024449291602208859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d64b7ce7aad794407558c615ce2054d6e5c0633afcd43941392d1984a32277
Date: Tue, 28 Feb 2023 12:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677586565
