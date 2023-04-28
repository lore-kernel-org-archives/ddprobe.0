Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445BB15AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1973C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682645526;
	bh=4O2HyBCSgGJXyCa+WfAzlWNITF39M8QSc+q5xTVjs9I=;
	h=To:Subject:From:Date:From;
	b=gI49v5sNXp8/EhMAOjso2MlaTAdgZpyPB5ni7bipTxb2pBIytl3iil+oWwe82gfaj
	 wFjRTc/72Rr3jjktzhaF/Cu+vqyPxAXLz1szPHZQ04YeKwI9VtgejuJOVJT8ERF2k0
	 qIDTbOOk23KwVwWIfzYCjb5Q3L0ErRTdXVptgd2Dj15IBublVQZG8WF/x6M2sMVFPk
	 j0rOc6oRJPBjism0svZyVFJ/zJUfMKRSNewiyYKuzphMAiqPPdRIam8oMWMjl8vWUo
	 ir1L4ozFdUF+ctiNdWohmvSaoYe9eAaMnws5dyNsYT2uwlOXZ+eoJnCaXV9mgRnWVx
	 uh2wLqPPxGTdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CF7C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264552577.4915.13343680918539705872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c2fb55cb1f56a296ce4f59b49481f43a62a21bf3b697a326b6f77a49311675
Date: Fri, 28 Apr 2023 01:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682645525
