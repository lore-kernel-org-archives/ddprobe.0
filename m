Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B04717E3
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 08:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF9AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693728848;
	bh=Th7rOP15LvoVGOwZT4WDnRVOxpTGS/pdliltTEq58no=;
	h=To:Subject:From:Date:From;
	b=NRPdV1FgksdfAP8HmPGrCQyNfO18eavCDf0TJXcUsaOXYIkFrKViVJg35RjZn6Mce
	 /E1jzVhB295SFG7QKHpAHYC0QzzX5+QsICRvD1+aJJqCORIFobB5is1eEXp9KfNWd3
	 yJFz86Lmx/GhihhiY9u/Yz6tOUEwPg75RhA3BgB9QjYKAQ4dUne8smiZfuRvIJF6mW
	 YJFmZg/i587G3X+jjfUjXFrzNulmkTU9P3oavwV1ohrOr2AT327ZKhNg4NYLZj7GkO
	 lcK84yl3l7bIozxv46bBVPDQbQb7gWxLPRWWIrF/qp+YWuvx2+0MngE/+SbJU6CjrP
	 HJZhVH+uB3CNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB5C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 08:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169372884869.2921.101473550162165607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c72538a860204c5f8c88ad0acdea26a3bbea8e9fbdca59d42cd433eac2a91bf
Date: Sun, 03 Sep 2023 08:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693728848
