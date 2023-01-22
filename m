Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B71A7E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1802C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674376325;
	bh=2XYgB97IwmTxIL1d5GuXqqWmWyKnN266IKP0tWm8exo=;
	h=To:Subject:From:Date:From;
	b=oewrS/xwBYaVSVP4zrrIkFWwI6eqmz/21txwaWuYweWxd6KeJMC72A2ZdgElmcs37
	 mfkdVy/9ExrD+FNs/moWJaREf9krSIa6EjEkf6PNOWYgX8nug1Rqw+mIHOSb+ylsI5
	 o9/CzpNzZQtkTyRCH4BG1Arq6bd6YqeuWp1gbV3SVrj9aVF5DUssKvsdc3zay4kn8I
	 tJgl0v/WJ80n/7amYGKrxBIpZ+gZW0mdL6XTPFsfOxTrzSVA3zE5/ozsdt7BA85cHq
	 o/+sBm65ZNweuiZF6XbYCJgYJo3LdGcMEMvOauFAPslP4UUk6yIThu+oXg/MdLpk67
	 JcEH9Mpkzu2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C263BC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167437632576.16370.17118860181424021689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472c1db7ead202f42022e40023c0e719427c58807b2b4cada02958977dce604d
Date: Sun, 22 Jan 2023 08:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674376325
