Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786A16FBA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD15EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685646365;
	bh=ELy/eVx5e7lYEQ4BGPbx2anFLzfXxz0jXnmte0Up3Rg=;
	h=To:Subject:From:Date:From;
	b=i/kqOYzgsvb2JiRVT70z/p1C4ceEj6E3WrBi9AX3keNejmrn5Ug3weT1oDAoVi8Dr
	 eVrcVnC3+jbLz5GZ+J8V44QzVcLulTEwzs01wredgq6U976Yu9E9vBumrM1tVLPpJd
	 /u6BXf5kQOKXzojEJXOp6UuichYiCSswBJEC9DUrxcqeSdG7DhWrrZKsda1mfPS5T7
	 khjhyyQpC9IQf6CDuCC1tdOBr7Dy1cOpVuKFp3QeO3C6NYZE0rU6xaKptPjdIlKzm3
	 JG6eI1nkud3yS/PqNbe+/E3/xNyUiwiq1i7OApmkzOY3pH6osyDI6lUG+PP42aV1AX
	 qXmER0enTcY2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05E6C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168564636577.7581.9895353635357959635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae6a87bd77b48d5d489bc0f145bcfee3383409227f0d57a8f722cf0b3a01527
Date: Thu, 01 Jun 2023 19:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685646365
