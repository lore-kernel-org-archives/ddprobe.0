Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288B3184
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778702434; cv=none; b=uLmZB7sOJFkHbPq7DvCVrWsXJUnN4jNQqiH7FSWtEvdGX+xuag6T51RgVwFfWTiWAkqiSvQkMyDSVwEy+YSgz9sOcncplBFXj3fbDOzGppTTbAuywTxt1nZhMYH6+rhzQnvbP7S6Ospz+yYbqKJ9P+8GoyyEyu4x1rYa3g7l6zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778702434; c=relaxed/simple;
	bh=x5/9p3gEV1yfSCI084V03MTBf4lfzNov0gLWpITagio=;
	h=To:Subject:From:Message-Id:Date; b=mTjeulhVKaSo+hJbfQPIf/YH90wTUQlaPVcX9Sbo9VAUJGXy1swyXTjNTFSjlacJUgKfdktbixr17A5bQzdEEGIhYlq0cFMt5gooLqWO6S7Tqs5O3THqodcXbCL5T0tNuQStjAD7+f4ZYnzqslO0odLW+7bRwvuwre3HuGDkjFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtH87US6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtH87US6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4F4C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778702433;
	bh=x5/9p3gEV1yfSCI084V03MTBf4lfzNov0gLWpITagio=;
	h=To:Subject:From:Date:From;
	b=LtH87US6RD76bVGqRjWChLZA9uNO2+cnTN4x/4UkBuMK+rE3A3bUTBLtSNlSddR7b
	 9FN27rXIssLHZ9zXrX9Bn8Gmok+ithFw86wrkI0YqIIb1iVxNURVfT3KD4I/ATBZSo
	 A8K+49N2+W0Nc2YWzDtk56FzeTWIlkB6K1J/BfWI8p79stXjTIm2qul1k6hC87Wgvf
	 iwbBnB9xbEvqAqojYB6Y1TaQboYqzAidmjjJAdCu1AOW4W5L2Yrb3Em30PfVnrlFAm
	 K0DB3C7KTQnNBpYAl17Z8kpVf7wMvUK/fGVkMDUo24pnGroCf+Xf+JX1Yji7I2ZD+q
	 GQR0YdFwt5Xhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE6CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870243369.9995.10615822170330293525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84694604f2c953115b378c3792a34d654bc824193bff36c37d1daa08d4e9fb7
Date: Wed, 13 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778702433
