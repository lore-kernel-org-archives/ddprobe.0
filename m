Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE4A36F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66DB9C433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662712253;
	bh=TjE/xkXjauy5Pzgcb3ZGgJozXp419E8W+OXnolxrDTA=;
	h=To:Subject:From:Date:From;
	b=kWTUWfObD74sdYJTKrFx5/XRdgK50rCMKjZ3jAws6sQGECeWwFLUvuCvDwfSEVj+4
	 dvEfbeyJA2gEDGhzCgmVfTZo33ipilPAra/B8jA22diuUwJVvMpMd9soFmNOFGFn69
	 HAdoNhn5oiIpxxKx4inKgoH+GgXMHql/sfCaXnXOeu+K9XE07O9SGsR7JhmU+22ILD
	 0nrJ5Kf0PM9YvNGbTrYnlCjwqsv4dBJzU2zE2wQUhQU/hnrnHJMGYmgY6Ai5OwVM4c
	 6kGqOFc1wV9v7TiGkJN7fkdmdCVGmqVst0/OY94fHqxUF13i0l506vQSafIwfiQxy6
	 C4Kvp5+z7fFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51478ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271225332.15866.11324145186344913161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f5a4ab2d230d13f196179406d44f5ba9b49eea5aa5a186add937e9cf118df8
Date: Fri, 09 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662712253
