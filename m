Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4537233D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0301C43444
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674838985;
	bh=qhjiwQZPEheP2Yj8P3E4MB7OEe+H7gb6fpATzGaGHkA=;
	h=To:Subject:From:Date:From;
	b=MUS7F4CfGQV/bb+TMmQ0cezON0au2Ze7rWYsnrjSAwNLkMoaDmRRXVWnUQz5VXghp
	 w4Fhd6cp6ieWdPnTJNOANP3TB80LwFpuj4lVrkTF6fKnTlAFJbYMrcPMdAIiQOK6Le
	 gEa/UtXAujZdXBSDVBZrZrK5ajohAT0Ft6SHn4jQPMHM9pLkA1ewQdKSsiEVnbVwcC
	 bAHH/DV7n4NLjjJO/O7w//Z9muOIx/fkdNSTMVacUyuQT0+nwDb5nPF8CIgSr72zAx
	 GowyyXxtk4lNKfQP3sF8WHlOg0Eqpix89YUUMOKe0zXeBQtXbpbfUxsb+UZpvEuWmv
	 5EG9TkM/OizcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C460CC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483898579.24461.804307474634667221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0477724ce5a5d4fdfd6f1e3f40b5c4cfb2c2bd044ae968735fe7f3bbeace1c
Date: Fri, 27 Jan 2023 17:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674838985
