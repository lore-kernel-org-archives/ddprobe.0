Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA9B101C1
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc4MK4uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9D5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701154096;
	bh=jFkFghTd2MCyrReC/kh98A8EhAhuaPqlPGX7fAZQDws=;
	h=To:Subject:From:Date:From;
	b=mc4MK4ufyPpvYtjxH2iHl1IU/vxpk2hNxDZd9GVlEBfffe6+i0SNSNzx3JwhW5Sqn
	 roeUjrrUyvPIEUbZXUIniq3XHu86JogAhm86ID2iGfCB5pISKxzFBMXI0TAa/5CbfY
	 fy3tUOgktMmgDud6eXcZt8p6xgCcLMd+hxIAA74wrbQYnBQ5aS+0sTE61okEXew9Kr
	 IShu5EzPJ54MDw7KA9sTuHZcW9DpJ8/aLHBfG2ADjo3TUcImlfdDzJMgwQ9qCRlUTt
	 ieut4opxEAhASLbW3Ng3RZJ0nAe+nSD1zq94LhH1ecD1Ho7PhR+GaAX4KljnCm5gff
	 ldu6QKrrXc8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D42C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170115409639.12969.17404417067628577076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c805c5cc31b42e9ad4edb5366a08384f8cf8cc33b68962f02bbaf8d972541d
Date: Tue, 28 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701154096
