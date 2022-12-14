Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F2233E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E70C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671010887;
	bh=GMm1B1sK0pOtD/tUqNRyxqOJXnMLgiBSi98UOSRDT9c=;
	h=To:Subject:From:Date:From;
	b=s+j+mBtwCcWpP0DyzhRS/o1HNIfCSxTRK+IvqMplhafjrA2fZp8xfC7KYJI4Ihkp7
	 c9zh8o+6qWFtOlK24GDO3Qg6aD0+1D4XGplbh8n3fxvhWYZf7vkksDMDdkGWDhaD91
	 Z3Tc+TmbmH1ORPDjkGwkE5g2fzCBw7JXKThzZJqaP+JayKh/3tkkJ7YdfVy6oF2cJv
	 CnImIPAbF9g9wYr8P2uH/5t/XpIYf0OaI9BqHSOshbCI/7J22sT3fXU26EaG79ohCA
	 dAxRmAqsJdww3sn3/muYleM70D2PnEmQVbalso1SVDYb94SJvlEEam8YY3zq5zqJ0I
	 Yy4ylT7vzW4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC76C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101088738.470.2327913868053910613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e9510ab2271ea7b06035269b6d6f3e48d0bd0e063079133921c3ed241fcb95
Date: Wed, 14 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671010887
