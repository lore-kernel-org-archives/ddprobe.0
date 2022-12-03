Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA3C7C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEB5C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670028054;
	bh=0uJWgdZJDFScUDN3TvOcRi/pqmEvnXXJNWx12Kb2GZw=;
	h=To:Subject:From:Date:From;
	b=cnjvmirw95UGNsViK1h6bp2+XLqpLZiOKDK9h7jI5ErDlKfdi+quAVQtksf336HH8
	 uEJHsWYPs46B+tZVYUl5RK84EuDAlm0jZMoIKgSPtcZW9rS1CubioEyb8uQyPrs3H9
	 yvjgVD/yCP1p7Ya3K+HyXpFgrVvAyrcVNQHjQ/BnxCB++LKCNTrWRNAiaEWIeIFHgk
	 W8+gixGcb4okTvJCOVAZ54JXQtjQaqUj84Hce6896cyAALg6ebGTP+0ucYUk234PSy
	 JWHXKXAL3ieIBFAx1GgpOUitHdAhnG5ATJY6a9W1Ki/WmM+fONV3UAxdG57BrFTSpF
	 bChN6Gq41BS0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AD1C63703
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002805438.18603.16935631327173510105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a82f0fbe85053feb98f8366a21035106b9c7889ab98a5b1f79accfa7376fe1
Date: Sat, 03 Dec 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670028054
