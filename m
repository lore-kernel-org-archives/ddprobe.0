Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E725D7FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9330FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672898487;
	bh=IfuFB5/6+eRzX7ROvVgl6j7bo2oloYe9kBPWNqZiMm0=;
	h=To:Subject:From:Date:From;
	b=D5FDFrJU5zCfsILxo9ZwbLI2qfjqRNNMuSGsdMbTwGkKcjKe1genVG5xoix8ZApwN
	 T7JQ2s4ElsFZ2Gg/wOpADwsLFHo4rp+VohVP0hju8JEzqmsBgdplNZfTV8KgTYaktT
	 b7BOSDbPV5cGYg4TVt+sAwWyKOmDFSHIPBp3s0rOxYXlEP3MlbFI90tcA6QwaqJ/Qd
	 a3SBrsFmT3GdPYtoQLbftoufwPldq6VBZUQfueP4g2ZtMhI76kFNcYGvzv5jzEV036
	 2T2wEsT0VZ9I9vH64eHKQ3dV8LnnJ9oyyEhl74Mz7eokOcX6uPbdvYDyAB5Bnqq7Id
	 8JkZkWyyE46Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69426C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289848742.27504.11566972074213433401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072b10553c19a6647bcc77f655dec0595a6837af525d1c5258a40abc1251a973
Date: Thu, 05 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672898487
