Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2FF1C17
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E528C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663043453;
	bh=wPoh9dhmxpCpIwiYPKt79E4L+HElb+Rk/zbCnjAaaCk=;
	h=To:Subject:From:Date:From;
	b=lBYmVRnWzRIVI/Fpqy5HuCapqA/PgsfpNtVonxlexKrfTyNZDuuKWj6fXZYCHcuFP
	 qExsviu9IEVZWQBZjlsSf6y1RdNJRGEWLhs3tkmcVIjEZ48iCf3L+DBdazmplcjPMn
	 EBSbTyaK5DKkSqhr7FjtdGd5L5qvgO19K0iuW4TnG1JS6bogcdp7hyPPuTZ63Q2aYS
	 /WgyPiOQZtQO66uBE85O/QT7+s6QeKQoWtMEa8928FtJ34ud/SF1GuiaGctPUkZI5t
	 kJUOYwI/m+YMIm6pIhF6aO9fLFia6ejpKkKSC9sM+1f2BHtXQ0qXlSIbxmQOuIkiqB
	 UZ/4CKu5JMraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513DCC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304345332.25438.8533508248946883185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42125148ab03b8ba559cf30c389829d4040003f42f0dd9c7b3a42cab09c2a8d1
Date: Tue, 13 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663043453
