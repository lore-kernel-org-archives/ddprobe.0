Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7252362A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DE0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690024328;
	bh=InsotXUxcg/x3VPBe7ySYMuifaPBu8SHovUf97i6ic8=;
	h=To:Subject:From:Date:From;
	b=c+oHlXTiWK4Wj9RpOs0qFofWIBrxVyxUpW+BAFGOkSiZRcR+xJxDT/4ECMEr1YE7n
	 6kuNVQoaDEj+bvMAlG7Lbwej/3ufuHtN2jHvwmAOVC32fQY1XEFOIbTNx6taX1mxU9
	 CHjTbBRVlkmLz8JjhudGiJjT8Jq4SUyrOI3RgqF0peAqz+ZTAJMzmhvJXb6Cyx7jPf
	 G2HWrVhvk1AE4dt9xnSC5CvXprAQddcPnUTexahlw8PjZlg6i3QmN7epZh4/+79Jnd
	 i8u1sb6iJRfkI1G5NdXp5DjgNptwkMySaGLekfLgUyrp0sTHJlEXdsmCgsNYdZmpA+
	 Wg/VfpP8SG4bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37C2EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002432872.27480.7925835853687783876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740f00fea91e5bc96b4864f6727fbb4157927b874011ee854cf3bef88e65ec76
Date: Sat, 22 Jul 2023 11:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690024328
