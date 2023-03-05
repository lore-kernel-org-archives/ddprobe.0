Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3754A2F26
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05ABC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678036625;
	bh=yivD0YYJYCO/q4atS/uB3njW8+JQWRB0mBHu3KF3aL0=;
	h=To:Subject:From:Date:From;
	b=ntqPW/lXJXOqE5ylGN3v897hImnFSHjw1DqjqyJcgZKhQzCpTwckxVTKEhW8YBMXK
	 kfx0Q+FP6Y8gUH25zf5rk6yWjQ8s0i+kTH46tePC3dA+rikwlzxImXm7iOH9DpfQIt
	 Ufh3MPIgGImmAn81mdTmz+kC8fwh/ms2qz3gqrBmlIt5nyVAaQhMw8KTWPsA+gZuBe
	 vrJsyMDN29nwz219Qy9x8dT6pKPREMi5zkub0EfL2/wCM4lxKmbMcfq+iHEYNb6IJ3
	 QRsqSR1HjnxRqqK0gbSvoL/QwjBh0pqfAH+JkIt65ADTI6hnq/u/Vl1QTVcbCuINjS
	 RshAyTmhZ+sAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4798C6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167803662573.29220.12525336161065560248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241d728c12a9e0162a037a53b68bad5a4c3e1748a24cf9553f65c2af556abb66
Date: Sun, 05 Mar 2023 17:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678036625
