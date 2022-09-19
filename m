Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4896A2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7389AC433D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663567253;
	bh=y8FaMBtl2H+HZmpUSL4lOYcx+DsjbYuOldnzn6jqAxM=;
	h=To:Subject:From:Date:From;
	b=k3MNHCADTgIJ30lFqsn2YmA4CLIa8poTDyC1csvFea4DYHlwlY10LGJkjdRPYbyZ9
	 10AEmAtAVD8nuNVe5XWdYC+3j8mfM9/o4m5zi+tzfB0oQoDgRvth2cde6J7CvM7D9D
	 kBZhORk2cKenFqzNOYXmUHcjP7G+mrWsH50pIglU3YXLVAmlCVaV6cjIUxMwjkiREu
	 LmIkIMvnVYfC7PDT0YXs+P2bfP3y+LFikgN8AoPmmSbOi0H2vw51xoYTNO8hTHQ5cJ
	 PW0/T4RZEVOvvxFaDiB4ZyE7B4aIIMjcmFRpS+sBNIeSCgUIPQDAFDuJH8S8PgOd3b
	 0i7phmhbozd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FEBECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356725334.4660.17568340821462053798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5661d7f91b024cbf5536893d94b78efc9c34139a9d7a38b35f799e99d49767
Date: Mon, 19 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663567253
