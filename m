Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8862107
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F7DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688722028;
	bh=ZAGXAOXEyPC37Rh7c0E0aKfEhtPY6AQKMBIeMnZuGY4=;
	h=To:Subject:From:Date:From;
	b=rrvbpWFlPyX9cBNCkRG4JvE/eQUjz+g1kzNYysYnIbubfCXEXUi0/eTpGle7ny80R
	 eA9/ZV0k7DyjtvFUhbjVfcaa9MZpEfwPlEJdO7XbG1wv29ID6qaog9UyTj7lqt22Ir
	 mu1jytm4YJPq8cYZy8RQEQSIK9Moo9hyWpc9/3Hm7izyjBVGvIMZbvTRfdLFdA+CYW
	 m++yi8lfAUox6ZHK+E9ELkjPwlBnQz26iqZwZWdhxM9HjG1O/yeoRrv4xRHSO/g0Ab
	 vIr1o/y+FtdgaHf8OtkH5lSTEicPdDOc6/dbOfpP05W57s69IbWJ7GCCdURz4Zqxa4
	 hDsvooylzv/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF84DEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 09:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872202870.10423.10583318662501966257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0d0556880c48ee06572bd84e7e9bb8f22a9cff7d042b22c95b2b09eb077af6
Date: Fri, 07 Jul 2023 09:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688722028
