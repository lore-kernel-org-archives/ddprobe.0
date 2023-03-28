Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896652772D
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DCD8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 21:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680039786;
	bh=EhezkO86/pfLNV05zRztCboAPdfN8sPtf4HKpm0kOMw=;
	h=To:Subject:From:Date:From;
	b=Smh6gdty6dEDe+ZhPGx5HV7USqQS70yibxSOPyWJZuBddCBpfh5iQ6cgy/9GhwyTq
	 4/q0Z7mlff3bnUTW9NeVC0smky9g3iqxecUJBIXvtLB2nyjea/+KuOv+YBaaXv4gIG
	 9Rwlw4SnuDp2gq/MrMz7c8/zqG9lE8rFNH7M6FFIx3Fdi+wRraAKOvZ7AFrpk4SFWe
	 aSgHj7kO/QehrjtPJTITVV1JdR6iAZYPMhg0ajJ5pZWsiXftiC1UrCv8NrJfngz7sa
	 79g8bQT9OSU/ZZerzBTPSllvGKFDTYNzSmxRjuNtQRBhyTqmoIt8/MkaeqGgubWpTP
	 W4d1Sqc+BmmHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10C16C77B6C
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 21:43:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168003978601.18004.9240736541463750049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247eef2f7af8c6a00f300fa510f74e7cdff1e690aaf86f798e68e6aa3411b2cb
Date: Tue, 28 Mar 2023 21:43:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680039786
