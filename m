Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DED15B4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA36C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673245887;
	bh=TA+mTZaAAC3qnii0Ia0XrB9Nt/W9xlaEPOSlMWV/2Pc=;
	h=To:Subject:From:Date:From;
	b=lVbKsCR03oNE65+zrNAIoCX4rUXXtyClF53/4OPCQSp5AyTHukZfBj8X0SemeKEmp
	 fvh3Nfd5cD9iJOXmiMInqF7DN+y7UBr/eI/Zb7cQumbJBfeLr7Si4n91Jr9kLOCHUk
	 mnjLCHmtI3O7bL7avY/oSxoxhtOBlIxaA/cwOgskmKp/lJB1m5AyXOij/SibFNigmG
	 Id/pW7lOGe2JeW8kOs/dNGGjQ0Z1b1MYa1HaFAyeTUhFeHxaGRBHLgyY6NgDf+TYfY
	 Ao80eKUtY6OM9vcI8nkVRK975vExlhHGMzGmWKxbSnNZd2r2bZhf/z2nSxhUSXqyn9
	 /7M6aOr3izbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E302C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324588740.7632.3305678250141830177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b299084408ff51a5f184de8b6ef837a8487e545a374730b5276a1f41300a170d
Date: Mon, 09 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673245887
