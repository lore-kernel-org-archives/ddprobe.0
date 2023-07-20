Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CB819BD0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4097C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689880328;
	bh=r1AVxe0KJ6AewNC4cKE2cyU30ZlNBaxXxgE17G1PhSE=;
	h=To:Subject:From:Date:From;
	b=RiPVoB0U3gKJtboo9mcSeUsIm/ibNUUzavEDhn4iLMJ7KwcMfq6zxM1dXrBpCd2wH
	 CT9ILf0Xx3TOTzTXNOZl8AHjzFJzHk574pKg3mcIUhN6vMPcs8jxdq8fTrop6h9QV4
	 tHhRaLWtB2m7HFv137kcE5Um7v4HIRyE9K9tboGXwpTSXgyooee/cZF8asbmEQ0fIH
	 sgn1yrWfrB8gAiBjyqd39xxdD8yOD5zS0W8S6o86VStvmX1f8E+F5E4bJXIMMZr04x
	 Qnyuj3wYazu47gtRwMn62ub20ROAFwcYUExaji8fPg3PBx/GvGCx6361a7eCi9xYzJ
	 bdMbSKuxyAifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C3DC001DE
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988032868.8245.16804956646289042773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8abc12f9e06cf44e7b16dd28d83e6ff68db5b81f2ccb9d49b2aa7c86ce5696
Date: Thu, 20 Jul 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689880328
