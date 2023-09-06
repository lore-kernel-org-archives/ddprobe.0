Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D10211CAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 21:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36C1C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694036048;
	bh=H945lKnpNiRkAL9pfsvt+n0i8Hf8XlKgHHhqW1NA6Rk=;
	h=To:Subject:From:Date:From;
	b=VEe3d0zxHBKYHn4N0qJM0en3dwPPY1+HPT6IRVT4aQ8u/9ThVdRtjENuIjaiMUIHa
	 CP84XoUgj/y/Nz6RRfQS5b5aUcigRoFjla6M+nXe4cLywLhpYhSpnUADnhInSs+v6X
	 igjFdxGWgguaWWHNJujAq74AU8+zgXvnQzqJ76BtrfnSuOwsYZSyov+xlkfrJdaazn
	 xOZy+2NjUnpx1mGCxpSFr0OJZdGcdUST9oCShxubHR8DbdYBD02RyFUr+oVoLtXJr1
	 ePcjkUFvBQBVcMuimh4eM4Y1wqb9gcZbitneLts8c4YjvT4AvsUuTBE3ybjHri+RCc
	 aP/Tvm+No2oYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9E4EE14D6
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 21:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403604880.31372.9890691549851868809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a11c7c5a0cfc5ece4081efc5ca06288d3b652c0cecfa96cd8f40c0035daebb2
Date: Wed, 06 Sep 2023 21:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694036048
