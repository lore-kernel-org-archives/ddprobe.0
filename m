Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414A437B
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 01:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E516CC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675820945;
	bh=P7p6inBz2b6qrWYPl15ERzgG6T+cUKGbfn6DDr59pZQ=;
	h=To:Subject:From:Date:From;
	b=keFPIivFC012HFgLT+FK3L2iNmY5gMZ4DrCkfI7P/TnHSInFpAN9RLfNmDpacEz7j
	 fO7sDAQlIJZ4oKONrxi9I4mBqZohfjaXyf3xxeetbdBjGMqvz1vYJ+aVYup6dQ5GHM
	 higDDlH+wRIMBu+HRXbCbaoSlIJBFMjQNT8WdblSnxx+tgFvtTomvQQlP55U58j43h
	 7pRKpOxuNkeJv81g5Qw2/q7JtKRIAfEowuMkYdbfTs58B9ePiIgehPwjiQQJ3QdnHB
	 /Ywn0pX9hRCW01HiJuLnjStCZ/odUeAg2+DEfHFx1Skw3ko1M/Z3CmcDUcKAP+upqf
	 GPyIeITgK6mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C335BC636D6
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 01:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167582094577.7243.3600959888344645340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708b59bf3d47c654102b184ad612f66f3b3d73339977d0b208700669b88ce9a2
Date: Wed, 08 Feb 2023 01:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675820945
