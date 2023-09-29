Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806C827705
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 23:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D959AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 23:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696029368;
	bh=l2qdwFl7OjFktw8s6jA1ZGcIAYRpwVDFP96BTzbg5Kk=;
	h=To:Subject:From:Date:From;
	b=gmbfcEqubVYREGfKI+FX2vHxwBl4CG7VUE+w0t+jswi0vsaj0iKX9S3UKtXYHsVlG
	 QW78nAdqsXiCivuhqDLDrT8AczLkhZN05ULfAnzGi42TnEyPQHPFgaf+qdPeugiByf
	 lQQi0Hlwpose6aUyWbUu/PZTXevxRaDXy+Ll7ZHpfaXXwO/10PXft3ySdbD3hSihQh
	 G5SZK+iskrS6z2WiA4oG4NAzWHeSUQE8xegC2SFcybjsYIG07TKag7Hyh+3O9Hp8gL
	 wzlorc8/IsE+ErmEb300Frnusdhe2IBVM0vNy/HlUQ6m3DqKR3ueaJQhlj5G72IynH
	 phWvQL+TsT3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5071E7734B
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 23:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169602936871.10194.11627367756095399539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c822f22627f74e4ffb9eb76a3314300331f2bc883ff91e9101400589e242d2
Date: Fri, 29 Sep 2023 23:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696029368
