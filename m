Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342FB566C
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 18:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5CDC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 18:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678126025;
	bh=T0oHxpFGxDFb/gfEIGpV/OpMxOsn1PKQeEyKySpbegE=;
	h=To:Subject:From:Date:From;
	b=F22tpyRi427y31eljwkIdFi5Jxg7Z4Rth7wMiwZu33Sndqs/TgUtknpMJsELc9Dlf
	 AP6Bm401s/kPUVcVm7CrXHkMxm+t306wC58IUO/RnJit79B4l/uz2Y3UqFYI+7WnFf
	 wKP3HIO0BOOEG3h6I7yy+jqEuHcg5I4PvRDrz9QOF9r3TUfkVNb66HhRC1PbewryXW
	 99jbyEcbhlt6o6Dt+jODh1O2orif7oK5s3LZ0bLuph+0n3tn+UVfx+fFSW3P/qmwgQ
	 kRvWp5cv4ey5qXajvDiIwqBg96HlbNiMp7t4LaBKpcrF2+tlNEelrgFQMTey/jn9m5
	 RVYwnpImZrK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC476C64EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 18:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167812602575.16795.1120344375548028148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1276ab1b878adac88520d9597dd521c913422033cfc846580c5a7950dd53c9c
Date: Mon, 06 Mar 2023 18:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678126025
