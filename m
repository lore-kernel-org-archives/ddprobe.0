Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CB017AB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 12:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7A3C433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691582588;
	bh=YWwryNmaUyidHpTp5AFdtF3rjnQiCxL19QwGFRGSH+g=;
	h=To:Subject:From:Date:From;
	b=W58KQYhMOKgxoiRfldqtoglL1iozMJCFlurhLIw+AbMeKeYqvHt41FXiGSXCtOB7e
	 gu3ZSDLJS6nChTFtBkQkOwElOiyIkdJ67cjupWtsEQ+FdtoLSX4U9q9820G7me7ut0
	 rzuB3WYvf19EhCVuexI0zH/MMp5AUL5uwF3dWb9gqB6nAo6Umv8L1ivUGrv8uguBAZ
	 tVH6qU9DB5msrIRgeN/xdvpE/5cFj5P0DSALGFehidc/T4fcMivHschUWVrT09VH7l
	 Xl55RN1bj7ZAxFS3N1d/W1KoPi+k3Kq8ULQDYdhbt6KHMVSxc9Xz5gIpdpq6qTBTav
	 X5Q4n44AeQOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1560EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169158258871.30370.9675034567352577889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a573956efbf1063541f42bbec671d3221d2d4cefef4df305ce5fa31e576479c4
Date: Wed, 09 Aug 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691582588
