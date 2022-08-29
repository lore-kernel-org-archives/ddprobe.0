Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BE26100
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B09DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661816452;
	bh=TaCroV+wqt1JbYxisP24MV+ENTsB0UqteLNqzTfVL6I=;
	h=To:Subject:From:Date:From;
	b=SODGKKOnLbRngxDQYsJLLLBNGMmwMmLR/ysz5hL7aWT84zXn+a0MQ4hD0LqHfKjfs
	 rKlT/DB4hqV8e1roUHrQkN0wAkaj3gx43jZAd3uiHmdw67RahdFeIgTN3pt7cR7UHT
	 SkGAHfk524ZViBnbmg8B78OaZEsJUrnqjVoSOxFkA9fAW+XR5y40ZY+1bT8xGFoScc
	 8GbXz6M4GVV83Q+ruoFDxXT+fyHHuinnDu24PdD195A02ON7+WUKxiEW6XlOqb4kwt
	 O7OCMJ/nT2vevAJSeq2fLUmls8YPLdxFztqhSXFZK++hYw2zdnsGFll4fv0bh7vtUx
	 cztOyEVF+PSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C805ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181645236.1469.14698462056924057555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5d50677a10436d21e5b6c67b020a7e2463d1fb2fb31f99259d70bac99b8c97
Date: Mon, 29 Aug 2022 23:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661816452
