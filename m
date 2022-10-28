Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE73D1C37
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE2CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666946454;
	bh=zDg8jo+s+qjbdDSpIQxxxsqRPq27IbpCAVqZiVtloZQ=;
	h=To:Subject:From:Date:From;
	b=iubzTqOj360we9nDMlqyWonDVxWdkz3wiskXB4pB/hBqEWMw29+/CUYnnlk4VXm89
	 zJTkwanGozOzf+fQa6DTYZqe3X9bZJ9FYU9AW6MwwDeJ627CTHgPme9FAYR8JfK9LH
	 xqSELwP1/J5ZEy2KYkg6HnRxMuX57BKEE8R3FocvpPydI9Xe1mMjttkFAgOesVcl2S
	 0ZT5Ua3rHmVogRu/5CKFDIR8aB8pDdS1ZIz1E+RgGO9NTkRLEgGGrpiGIn2/G8Kv6b
	 2Y16PrKLCPO5x+e6JGl+ubqUfDbBY0mPTxj/b1TQSuoem4X00lRZko6j9rY6HoBxbX
	 rrB0We47YWFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A7EECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694645432.21508.393575018026257183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b873f7b70886d772f0025834319b3f938445f09bf29971485306879f3581c6
Date: Fri, 28 Oct 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666946454
