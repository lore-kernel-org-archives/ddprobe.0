Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C372E1E9E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73598C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668116454;
	bh=UoEYFn/RgKMaJKOXhS9vuP76sFH3/UFNxvHPRiTDoE0=;
	h=To:Subject:From:Date:From;
	b=qkFfhhot0ZXsOpZG39P31kqdsHSrjUiX/T/Q/cCmADowQaj2GdRNIJSmSvE0ZyyAR
	 YazqVqJk0FqsWRdRdD5SoUfSkjRMlHgd/LSgg8XaovdRwoqYTbJwvHnVehe0EgUMbD
	 +dnMaoBRpqJQIf6w2+lPeF3FT4dtMgoH3wrX6uuTpF8Q5JClsC2sPWZPnhEyLWYsO5
	 uhzKSBg8ByCJFFxK3xKLReHXirKQ9vY2NTd4x5cr1DgzfE0zNJWAY8nfu+CdBj5O5V
	 mZFzebgnB3X9uwSNqiW15thQNoYWqcu9ErXiVf+3A4YvTiZMWuRDXr7SszU0Wo3Oa8
	 CrrJRvezIU7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D28C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166811645434.18767.10775323325069148357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afb04e81a0e24759ecde088b61c1599a7a2d3d4ff3b2506b8bff70a3bd1d724
Date: Thu, 10 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668116454
