Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDBE7B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE449C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680842886;
	bh=ThxaJ82+LQqiRobvBkjfiInknHF/NvikE7Z4saJdYDY=;
	h=To:Subject:From:Date:From;
	b=OpsRha2SAa3L+gj0eQerPgM0035JmSWFmYm47GMvXp/lEobQ57CB1x8vLf7YQ212Z
	 CTMIRFMYTTo11DHyrBWI3dxy0GvJgEAY9ZUO8uNLUr2eOOOVOwg7vHJBv295m1IuoC
	 SIzejpJFevIDX1Xju3yKh92yDMSeVMIRfjbIgCPx5ziHsASzoVqVr2+uQPcT5ArsxT
	 RrVhFJ1o7XUNssYv9szmwKcofW0b79F152T771cTwhUnWI2oscWUdqOAZpImXA9tnb
	 Ds8dG/PUJRKYutzC6UBSwIBMJbgfRdN33AC3g6h6PbtjCqtdg5qOTogL9yVwEQMcx8
	 RDsMXBdOvbksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA54C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168084288582.23751.4598013725888327790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf7232fff8c986f3b642a5390cb77ef9855ef12d2cd5ae7152d320c66116bfe
Date: Fri, 07 Apr 2023 04:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680842885
