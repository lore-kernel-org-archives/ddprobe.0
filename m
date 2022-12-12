Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A1523BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85929C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670844687;
	bh=Y+9P+KtUU/kE1eqZOI3lCsDWt7lpN5QoqgB1Jw/xfAw=;
	h=To:Subject:From:Date:From;
	b=fHsrwc2udtP6YeY02UFWw/TBnttffdMuTznDqMVr+pQ1aevCUO29h9iZQbvqMYde+
	 AR1rHKZLUQqUMhYCYB086XVEJGY8EgSnNSaFAcB8QGLlziYXqFmOVcjSK/LaNzPtmq
	 R9MhENTumHkYy8WGl0cXqU/47GAYDV5jMBMupys2NfIvcpmpRNUX3CQZZqvwjwmlhh
	 xhCfwpunu9GzRplNbXu8ObbGQ6BFsxR8eZOnbEJSivrbTm3OUI9KwOmttFFT051Z88
	 IHknJnYQWCIxmcQacXx7EYJQyn+W2ghfb5Ev0PbNUOz2PHONXLIDBld1ORERpt6Zko
	 iyYGc/qxvMuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67349C25B04
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084468741.12125.12795006551963096876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b8febfa84da2631b7b9bff794b02e45e6263f12c6c09a6c280e6e6ebd766d8
Date: Mon, 12 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670844687
