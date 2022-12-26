Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0B27B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F488C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672066887;
	bh=P6MqgulJS1qyxMoKqiJgaUhTbOOBdipDlIPB1phHs+s=;
	h=To:Subject:From:Date:From;
	b=P8mpo1yQ6SqkiN432Di99QWy48vKOgWcZxmQBTF8XW7w7BRC3gv7byMUTcH9pIj+Q
	 e/I2XqOpifekrptENVcRrP2Dht8ji3LflKwAr7GjBC5jqRReuatshjdudk6i53Qior
	 sVbmvJjx3kcL1ymLaeky9nFjZLQEnRClwV7rfNqqhLTGOCfhdu5r6fQaxtcLeXdu/N
	 Y5EYwFWu2vHluwCCIkLsuhgGeynUfYXdEVwjErUPtDdLYNQHoMnUFhXOB4i4Qe8iKn
	 R8OlI/tPraJMHqDTmRPRHZB0C8JfW2/aZejS5ZUnpgzYQW6C7W+vrB0Ub/b/+9crnD
	 9SbZolwx/bAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F71DC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206688742.23516.17078339873671562237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77210058d34905c3070bb6704856899e3474c4f95aed5be768e34463e1948651
Date: Mon, 26 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672066887
