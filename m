Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106BC6D6FB
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFw9Uxc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811DBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703165296;
	bh=+P1bkiI0kycV4Q+uF77SgWFFIgtOnYvvgO2OtFTodrM=;
	h=To:Subject:From:Date:From;
	b=TFw9Uxc8+dnL+lXrWb2ZsLgzJR4loJKY4Kescjkey5A0EsUZxr8qVcTS2x+0zwA5i
	 RBzSs5AOGtUO1ycv+/dQ8TzdMCWuuGk5I7SPAvnsWQPFqQZZuJTTmI41t7nXrvsNbV
	 aUnlxRW6Ts4sRS4MaCO1qmTpTvldFrlYT6aZXas0A3gm2zCV1gAWE2ZTQVqnQbqq90
	 gG/19qbe761d6aHQlkTTyACryzXyP0wYsj5JXODtzauKYgAGKU9Vpa93w5FnNmA9Dt
	 8M0BlS//0s3M+6o7fXgcfIFCpIR9jUZ9jFXfYv33IKA3HQsZklUKhLJDYGTPz3/sAk
	 lbChcANlRLtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63295C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170316529640.11376.12535330133912939344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97d0143e829e3b02eacdff9f6defc35eb92556e3073c3b8c09605b61ccd10ed
Date: Thu, 21 Dec 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703165296
