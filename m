Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365663FDC
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 06:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EFBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 06:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684217525;
	bh=85evc7LAcw9d6sSyxseZgeGL4LZ+95kwRN3BOrN6ckk=;
	h=To:Subject:From:Date:From;
	b=bl00vA37tUDlQcKk/E5cqv6SzmMxX7HRl/RwlaL9FQX2vo1SbIngwGfnxbUzL5SkZ
	 iq2GPKnM5uQRZ8Eap2qgGtdWlmhLvIdA3oXf4nmuDWo+GknkcW3xTOiyY0kGFAzI5k
	 qxwLq+nw4wFAoRNig+Uirac0Pq4YRQ0SqH+9rq/XMke6yCTanFFRfDoyY320/PXRr/
	 fyHRTXvxxH6JwZNWL1emI/D3/PO7/ETRXqZeT5AFPCtbrlGreNoKvRxie/+OEQhAu0
	 1sCutUDXTjiOBCh4CPOAU/wvhhWiAMOOyNu4PEqi1xdO3/Ce2RDd8tAV4JtQLMx4Mg
	 m0bRkez/3NErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93E4C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 06:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168421752573.20323.16330449930802312302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c09529aeff387aead01511f17fab439b3996900445476e700b3ceec9a1a936
Date: Tue, 16 May 2023 06:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684217525
