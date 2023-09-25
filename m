Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7CD1170A
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 21:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB759C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 21:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695676508;
	bh=dE/DvE9BsTN6RoykKDmzb83JqTntUI48FIJgE74CRCg=;
	h=To:Subject:From:Date:From;
	b=dDb4qAd7OrFiRZ61HyxQuHkA3B7HNYX7tZ6a6hplI30lW8CxWNupFdMBU5bWcNHGf
	 Qt8rvXq5jMhcMyZyWYypirew3Rq1guR91I6jYaSoGRCcNGEfxzGRHg8lnjxd7vYQgM
	 jdWQmLdOcgB2pqeQYDGsYMEhb4HRT7Q2668ylGyt6ozLSzmJZ/U6X6VGNUPHtPQOxw
	 GTsFb6FfgKkRVtdK5AQ0h7Vr3LZcoPT3bFWhO6uyqqb5UVgIjUkvdyFwgBOzlmHb9i
	 nWf+TJ0GWaXTm6L0CYWttXMtFcn2cXZlq/fkxXhB7bbychhuBZzQ9nVCx9slxlZ184
	 kf+mCUydhJ9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD165CE79A4
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 21:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169567650869.29670.5753358392984096037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636a9e1b6ad648b389636d8ee388139380df614632572089f962682ffb4025f6
Date: Mon, 25 Sep 2023 21:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695676508
