Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4087F
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 03:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D624EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 03:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675825745;
	bh=69c1y+yC+gOe5mKYXaUFdhAyz50HYb8yJHBtAYoR++k=;
	h=To:Subject:From:Date:From;
	b=phzJVpKkZZmAY/tubTsUDLuFX1AyAA9g5txf9rToEiwz/GBYBe5yDQUaardfcaB22
	 c4lRP5lLGGccBE1lnFPdKDzt9Y1bVGphxLQIo4jkYkjNo8vinM010GWOSBzXrG0wr7
	 2HHK3l9VonYoBEFo+T4M938aAkxl92GRrwOUmacLpcthAxmYWJu68lB8zDMx33yd/M
	 joXqbayDTmaj0l7/+b3Y/NkHa/G05mzHinbE5xpPYx5XTySjvFvlnUcG9PxNZtlyPS
	 K03wJGfqNAkOMfsF7bu5MLcOEKv4rM8DdNAzrTot4t5iurqIuNfwTQD/BdGpJPAkoW
	 F9WHgx2DjrZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83C1C636CD
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 03:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167582574574.1904.13937397917340909447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6227dcb8083c3b5e53d4ee06741f9efb7847d73c4dfa6c12949183c01c8b0ea5
Date: Wed, 08 Feb 2023 03:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675825745
