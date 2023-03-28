Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1408BE0
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB58BC4339B
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680016385;
	bh=zuU/laBDsMLNI/PYPVL/hUW0lm9ovlepYWP7WUFeqSQ=;
	h=To:Subject:From:Date:From;
	b=O1seQ+ZiOpMyzFu/Oy2YMhtF5dbrJLUmlo6kfdTIJq9r+uzIvT3wr6J+iGywisu0v
	 FNQQup4nWnnF5J2fpQ6JJIB1H5pXdOTnAQHnH6KExo5/meLCfxwuLtJuuX4Fklcl43
	 WyMzLkjVJgToouAqFIZ6qzKezU3YLIc+6KkIsS+lDOnPlmRY7bvcyiAmzQ/zxALWDA
	 TB5CR4KKy0OvlrbTUV50uOZq/a2jmG2o8GOy7dUuEGyFQ9ePB8JrbECuFyD1aiaQuc
	 xMJI01UzfxaJILrtFz7BZKuAiIgC8b2j3T42PAjfCElQJqITDWllvBxfZ4SDZYM7Ma
	 v7fGGA+NuyecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AB7C77B6E
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001638578.5248.1099525325339590293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7bb7449c63d1b3798a841140526204714efe64b7eea3b406673d2749b3bd51
Date: Tue, 28 Mar 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680016385
