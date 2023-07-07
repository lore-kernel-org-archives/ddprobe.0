Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8FA8BE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F3AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688717229;
	bh=q5oCDW4gm9ipMqTpDZWxom+goTcDEw61sGUTeJvgVwc=;
	h=To:Subject:From:Date:From;
	b=qRxLc/YmQEsmh+VS9D4doKp755N4D/og/pzVUYmLA+Udv4Aq7DH3iXMH57fFbV5jF
	 cL/XhERao6l6OzYPoLJbnyfF7RaN8SrXgOyDDZFdSmTlrvGkpUoUpm3TF65y58cCRi
	 G6O6RUmiQtJzWZLkA5kFl/EPtzL3WociD/n8QBrLClSXiBTnqqW/hUAWDp8KCMNK53
	 6fzX30kbO3kfRn8TMDpAsHwegshAun+j0BnH4TesRDUNHTN38f6eLqTqljVtgNnbEg
	 ai1ZMPsn/bAV5DdT11R0/NuouZPPGDpKEp3aE5eecO0BE1TLnrdiSygZU9x7hTacOR
	 n1SooFL76Cjwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BCAEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871722884.6230.1472111820994036224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565d9fe886a141a1901464476c17f9160a72727104277fb58ab76c67154520a5
Date: Fri, 07 Jul 2023 08:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688717228
