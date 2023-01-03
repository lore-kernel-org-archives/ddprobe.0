Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6977F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AD1C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672708287;
	bh=DrMzkCC3Mvqi8Tqi6gyeKuOqnqi64QwDAEMXx4EAVPE=;
	h=To:Subject:From:Date:From;
	b=ABm+n3mqK+/uBcC3Iz1866CruI+c8KfARk0r8bM8pJUvQicmGLEMYRqRzU39qka7I
	 rBcFH7nZ2R8yHFfm328fJKQLAL0rLS1PG0tFuXR31KWCRBiQw5I6R8WL94l0A3tVeo
	 +RzsIs2YE6orcGGFVMHUOm9vswC1DLW82tWmnY7EK4S1u79fEkx2pcd8XJLwNZQ2Sv
	 AZidYNgGYBNwMiqwdKrt94TbTfkpiS07sDsax4aXF7YinTPr4atPeTVZo3hcI0NMHi
	 oVKzoo/7xu+5RtpsWUo09FLGN+eRyHgvtifZYaNmC5Aladt1pWDW4UpGSpjyhIBLlq
	 iUFgoNEtBMlEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627ECC3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270828739.4551.10044420238030301716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9696d0a2492ba3f3636f2ead73bb655c120c5ad59e954e23162ce3d8ab91234c
Date: Tue, 03 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672708287
