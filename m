Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7DB7F
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 01:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79FDC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 01:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675647365;
	bh=rPNNJ84r1/uScpWJOy4J8SlqaP9Srt10Ttv55RQtP2U=;
	h=To:Subject:From:Date:From;
	b=B9UevpYmseHfaiurW9jZOFNY6mJ1g5oudPUSA92Sk+0gXeQl84311qqv5BM427zBN
	 v5or7s0NMoR2hiagKRZDBRhtVAEMXoU0jqUdyBPXrvwlTObXR1ece1KZkICpfuR/ky
	 AKUu5c0RGeYznDI9aWhngZGC+9/xeVLHbOclUFiOnOpXMnW2nsb3TIzlUxUveSv+L4
	 meOKnagjr/UvXIQkWa/i8EbMClMzpezFf4/exJOjyf0/DfxFUUg0XTCILRYKCAr83w
	 u/3r4k8L7P5Jk121fHqUcMf4rjnyLWjqXgWnfq2kjWntJrf025c3ymTYjz7FVF1fzL
	 PYXG+fffQn88Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5F8C636CD
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 01:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167564736575.28856.12539979234242130100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0eed412b5a78455bdd885a978f1e4afe1a4fa96de27bd1fd297718bd72e1ba
Date: Mon, 06 Feb 2023 01:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675647365
