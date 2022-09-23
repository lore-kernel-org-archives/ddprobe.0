Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B4F163
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA07C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663951853;
	bh=jEmEMJDY5SIfpXfF2dJ0ljT2rxct3Bw2kQAJUAfTX6E=;
	h=To:Subject:From:Date:From;
	b=L/+czqWfDwxdRiyZQfGcTIkrWREG0Fzl85Ih3sYNLGG1KSfM2VqZ+FkLotXVVvc4P
	 cqgRjLqkBNg5vch9AZEUFmQsAihwuIK0LZzk8BQC7W8ELuvrrk6MXOiTR05hXoyEBV
	 p6LxgPQ5qs9LZRywCCVG77P8NoPySYtRtZf95L6GFYeT1V5hvPThxo2AcA5Q3RJtAD
	 5AUs0RNRsiykfvtwD41j180+UMXTLUmfXn2lJMIonauVXPHqfwfFtZqiMN4yJdjmU6
	 i36BdYw7vwQpE8AYdWR7D8zKumk+nDflc3ZgOfKFtWSlua+PJrlM/OmIVBusBP8M3f
	 lqfgQErXyRu9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EA4C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395185331.23369.17815972066720624838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d4cc27058279a9493a5831ed50b2efc976939be1dc80b1dd47e1d080627fca
Date: Fri, 23 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663951853
