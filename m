Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4F423749
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 13:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOtJbjd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E667FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696687028;
	bh=fjB+36gZC+Y5ogAOYCoUEbCnHXAzpCDmBDFpJvCbmt4=;
	h=To:Subject:From:Date:From;
	b=QOtJbjd4BMRiIat/oeCVzH8naJllA/9wvwUEEXkcuX19wI1MlM01mkJh8JuDkfYmU
	 KMIztQBtNT51JcLy91YZ5c66IEpxRE0opml1pqtmUjiHRv+Coa7RO9MATq1Npnxl/1
	 AIit2Zhs+txoTFLjIuObp6ylkPd1z/7Z4uga/bwY1E6Waju6k7dixF7PrfzKYK8GGI
	 6oY6gGtQtLKmqD6dJWfaC1Oj1osT+njgIOm2iJEIduACToq5x6YfVL7QUUV2z2j9Zz
	 +ANeks1zEr8tXNRBLtyLs9G5a4YXmHa/X4gmkSonxSav4io+Uk/DFYD1Q6vTAJf/W2
	 XJhUX2q3umJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8081E95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169668702877.23062.12307511632828506119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c8767951b2b8913ec1ba633d5b6f63065fe86a080835e0a24b0a6f58cd9c30
Date: Sat, 07 Oct 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696687028
