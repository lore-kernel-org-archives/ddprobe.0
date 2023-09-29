Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD30188
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA78C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695969968;
	bh=2ACPf7dZ4JJQOZC6xvBg2IsgQBxx916i/JxZjsREI2w=;
	h=To:Subject:From:Date:From;
	b=tlffXqU6pjLQbI51vfZB3fqu1cu4GSqbr9KAHbk409ysVjM1QWbnZjX8ANutu4qwB
	 tZ3loZLBmZzWgLRSjFXCLvHYyIe/VvFRNpevd4UaR/Z1PuCNM+O3YJdEC7m0sx90mc
	 uEqlqowp27QRWvLtrO/R+7DM+JPgeeaVVADPF/u6k4ZlQjCZy+SAlJSEXFZ+ZI0/Z0
	 B+Wi6sXqN1Ow+iFL+sxNcz4QT0xBvxIDahBoic2FpoQ0hO63QhD5qs5Sz1s+02/UW8
	 ZrbEa3reBSKeDhccmvl4gbnLS/Q7wrw0ozs+auDvyb5iEb0wYinx72c9UsZGzR3uc4
	 IUVnGUIv5iRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE14E743EE
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169596996867.19764.8887457892753762455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef372648b3dbcab3bee791a7b4541876e1e5ac6852e1102320569a0a8ef0c56
Date: Fri, 29 Sep 2023 06:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695969968
