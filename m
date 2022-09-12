Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA5A7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BF4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662961853;
	bh=ZsPVzyYsB/oQ7fGyVhEXFnQVMCGxjlAjudox/5UjVYI=;
	h=To:Subject:From:Date:From;
	b=gJrKJ7nNd4iipIKu/lRTEz+EEsZGZmlLf+Z4fzg6Ob5DphdjyhaDqdayjZnyIAw7Y
	 JaEkodZVRC5q3fHheFETqnACBiKDUoIQMQg0eexZqt6KJSrKiaDgri83nePmXMoTH1
	 pm06rkItEi5EzZ2kiv07+gCStXEQ+KDRcyAtd1TTOwYMx5ZLg9YZR6K5Pos05yHTsN
	 K+bxmnAEupiOygHOTRq3pp2Lf5YpN8xzLfkJWIjlkq/2Qfn3YmBjqlILjQZwRpAMZ2
	 Gd1pZ5K5C69pt23qf5p0YD93Vx3O3LbDudd63eT76JanlDazLqf3nVml1M6yPRZNqs
	 qfA1mnO07gbNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597EAECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296185332.24319.9728660006475324258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bd136dd77f9d6b0257c557857e40f9255e6c1ddc49ef4096204090fe663d69
Date: Mon, 12 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662961853
