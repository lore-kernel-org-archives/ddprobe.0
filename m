Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45ED1B541
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D0BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668207054;
	bh=nsuExYUCW00hJEWx5g+8gDaSfWWBMZBoQAUhLLUZ4Nk=;
	h=To:Subject:From:Date:From;
	b=Be6b8LJdAwA5eU+HpzX1YN8u4Qj/6QSHHS3Vv/MSyEZl3h+lxzHpZsfosn5fGtxBD
	 MEX4auf1R+wa/uHrd9ohmfUqR5DlqhxoMvFvEimrh3praLm1x7VGWGC1NL3hF9RDQ9
	 UtWp9FemEfuCcJbXp2w4eBe2VpW/bIjuVqvUpnnlOoJjb7Pp3kuaK5kZqM7py+uYKp
	 gU7MPWxBnWLzkApwwuTy3SxXOal+7PBoOT10rxi6NRDisx0I7Rlyv+ggLnQUNv8VJN
	 NnAnM4TI73BF/4orwlG0qGUBOVlaMscfymoW1Vf6AVngay4k7j7ICnLbm9yzgmOxob
	 oTkyIi1JNBF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBCAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820705437.31090.69461986758419008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bc12d6ec44acb935a9fbe7632d1fdf48a35abb2a9f1417e8bdfe82d2b85121
Date: Fri, 11 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668207054
