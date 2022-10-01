Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F231FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E38C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664593253;
	bh=ZM/uaE0OiTr5ZMf+2DeVCMfAdO2X1DLvdLGjHufRLeY=;
	h=To:Subject:From:Date:From;
	b=e1+WIOzozB6oH2LyaVBAU8mCQyHNyzIu0IJXTxmkgU0gYFTN91XV5y/D56O5DhPcc
	 ic/Wk9o/Jb7kcb8IrD/6q0Y9d61/NIJmnDBwngBCsXlUyxu3dttwyLjeRhLAb7TPsN
	 NuA9+aaOpNiJjCQhyikNxKvb30CtJigG1qcTXqP2XRUk641iglyrDLzWIE6YSodZJq
	 uf9fJ/HsU2kkE1mSBxEG4AlV1gWfLbj4g0H13mMNKcGjSz1j+pTh8JXYUUu8kgS7xh
	 bWJGe5MsMklz4aFCmZ3MFbRZBP3it5cl/O2VDM+Ye+xwEovAc/uncIB+JyrNxlUeff
	 sKIH6nVIRBZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54700C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459325331.29729.12011430955307538947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9835132d80e0e99ef35b6cfdcb5eb96d92962696419b873bc99b22c3aaf88cca
Date: Sat, 01 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664593253
