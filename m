Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7165D125CE
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 11:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfWNE/Xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF356C32787
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 11:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696503968;
	bh=ritJRakvkTh3esBPS17Mgji1d+rPAxx8hrgUjrkgka4=;
	h=To:Subject:From:Date:From;
	b=qfWNE/Xzn01A1MgLzW9Jjyz/4HB1hi8VVZu+3AXCDdmgsk1jrddIgWUJAYwfE/ydR
	 xytXW5gk3WC6qII0y3JEjhlde9UKn1o5rV6zgBm76Y1jFCezkjurkjGDzQL/jPRw8L
	 hV+E9bmQ88luWVmdmUjxc5s7H8a6awOnsvLShjLThDgn9iTFdQ866rvDtWZzGtZngZ
	 riy16pMGAt0rhKS3asdyJKpCcrYP3nlHLU60sRMGyVvE2UfBO7BuCnYAOmfubpXNmD
	 Idyhhuwc8rNuUA2i9/xUyJzjaei2WAo0NgKKYk8N49+wWAmJzk0kSZqrOVUTxyZSGq
	 y18UXHenjOlMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D5DE93705
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 11:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169650396878.19345.15642277975236024382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20da6e639ba0b0ecf78b797bc1d4c135937d5a579e1bd5eaf50947212903450
Date: Thu, 05 Oct 2023 11:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696503968
