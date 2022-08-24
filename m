Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10D81870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFA9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661369452;
	bh=mZM5Me8KfL2AxfDY+gGey1C+Ft0Th6sx5V1ckxuhemk=;
	h=To:Subject:From:Date:From;
	b=ptewBm2CwEkJtkUEopOG5o5III8dCCYqVjRQYFBUI4wHHtTeVgo3MWVvnUSA53hU5
	 vDYXi9FiE9RsKG2e4YVxyUTo2KyLyfMkIpsufYGp4Fjaw2q1isbJ4Ivgbw79hnyqvi
	 M/l6ldEQW7ZJoBj+j35s5UGfh1UtFVPFmRP2i8h3caUNwgFQrVO2utuS3eAJINixQq
	 FcJ4RQ+0tP+VxRGRtKDTMWsFN2WPIFyVCoKGYA9fwly34DmY9JXDof2T7IJHkrk7AK
	 KzFgc+ZvngKnxtLVRDCtiHq6AwPTJvXi7vpfQaEGdx9OaZJLlaNcnTNKzMBe2n37Nx
	 yjZV6mVlGC4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AE6C00140
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166136945234.28306.282931062960087701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf767bd28205c16783f11f111473c3a41512b8bfb7af997450a4f015a1afb02
Date: Wed, 24 Aug 2022 19:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661369452
