Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04F77F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCD5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662886853;
	bh=67ZHUXYiLBN5UwfnS6LfnsQzA7IumHevzkZk93Iffgc=;
	h=To:Subject:From:Date:From;
	b=fVsOUipRQjdRLPyC+WMY1JY2PDxvpVXhW9baS4GwBBE8/svkJNwM0+oHDW+/DuEK9
	 C8wDA2IkrcJh88424WVoVgKU07gqMS2gRHxjJuEVVUJUmOJu4QJPx9g8FEg+eCpjk2
	 XD2bxATmvaRouuXrxTebIEQH+YODPjiK0mTyaBuAhNOF1MeCMPKNcm6+Gt0hJUHzko
	 YXrDH4CLcEest9cPkZZ0rBbHsQLq43/5Z/eTyqAtiiTkOE6HxC81o+WZt6HiR3hQ13
	 CyMMKhGChYZ13Cx7JV6Sw9xyvVO7+/HpMIPleg2XqOUtm1PKrr9SFZmU2oPvhpYgXY
	 1o4zizMuS3pYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61797C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288685338.15825.10448720471815817186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8021881c26c0e7e8a5d26aa94355eb114fd582c008872163d4780e7da8b95c4f
Date: Sun, 11 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662886853
