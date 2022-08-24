Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190167B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 20:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22EFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661374252;
	bh=B4P8dOaWMekVUPqJvxFgFwZLmrAHt8Gawt+s46gJSzk=;
	h=To:Subject:From:Date:From;
	b=dFNgBgctslFQsg6I5vwBS+RvbIAqanijzC0KfV1wQDVroeZIOfZld446Q2JYGzAD1
	 cJKOZs81vxQ0XgEidm2G65+jy3+sNZHEWWHEYZAaD87i9F2iVQ5EhlFPvAqJBHgelE
	 tTjz2oi2/5tRxPlEMB2SOL6FvVxqgQpIRAEELfwxUhXHlEdP8l4FIc5hu8mCqYaSY4
	 cX2Y5kfV4Iy5WY38MNDlaYaoTnRUMevljy6j0x67vIobmpqSbfOdPDJfQRaWu/lHvc
	 ToxHUmDKyvTXWezJVCFPqK/8AlV/eI+iaPrqYpJNUp81yuX/OG2XDo7bYG+bcpxsIY
	 jUO6LPvhVys8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84C7FC04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 20:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137425253.32273.12116075378316003656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d251cbe2d6f55e9287a5b0a008ed748282b9b9800db8cb3de9cdbc12e7f8b2b
Date: Wed, 24 Aug 2022 20:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661374252
