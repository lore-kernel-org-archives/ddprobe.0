Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C597C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A169C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668597054;
	bh=yIl3a94jFBgukVzUpMfzK5rrSeZEi+CYMoiFIcqn1nI=;
	h=To:Subject:From:Date:From;
	b=FODOG4b5qe8W36JV82Lkl0ICQ7YfpYPk+ervoFoaQ2bkRgfPD3VzwK1ExD3bvNdrX
	 HenVO1IlSyQb3LaDUK/3SAzIEXDAMeq+QT2BlQDwKb1Zb0XsxdjzBro7KnuQv0gRn4
	 UqFnQ6MxDyPE7ZrhtwxhAThvWtdPKdA2z3sNRxqyDBbrKAtfxRnb2O3tqwE3eIcJxv
	 YFcS18OJVs9WhBKmrp1x6cdi7HT2wMh8z55wFMR5KDr3mzptPw99VJLlvmDTplZw/d
	 Wz1vhdtVjQeQPDXZKA+T+T8C8fdXKI4o0XBXGEh6hhOhINPFLNGvev1BtUV1OFj3PO
	 U8sYvuqifD5Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CC0C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859705433.29049.2908366716037446052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e53fd5169cb8f5df5add871e36b1d6a07cbcaeff746ac1eb7e4a71ccfefed3
Date: Wed, 16 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668597054
