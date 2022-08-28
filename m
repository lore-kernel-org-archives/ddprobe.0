Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D492E7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785DCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661659852;
	bh=abBdecEr+Un4PNTWkrJYqWxCmulc2vfiAXirpM1iACU=;
	h=To:Subject:From:Date:From;
	b=GWBbvZIDr6R7FQJvLakEv45t6zPVDEGI1/qzrASSdxrO36n187p+92vUccnXwvIhm
	 eMv192Za3DRpdSBOXGa40k4RyAItZ9DxT1uPCgh9ghw1u4mpqWk2vW4NJ5dVJOhEZ/
	 QC9D1zU4eRyhiy3YKiGZsAfEcJZjpc84WyOyGT5whR/z1jw6x61PlYtbFSPtzyH2Ur
	 /OPNZ+2/wfGkeWOH5rSVEMiajSLkgs5ZVIBuBw/Wu57C6B/ob9WTT53QUWFprk3spc
	 Gi4+M1fIwKv/cM2WaCSj488wEFl3syTfJNFPNq4zENDQAmdAfDWdBvbFSo9QADDSYk
	 ZhPXiYsho19mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C460ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165985234.26871.1677246896379986554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b009b8219d7460dab47e2245ace74e750a7166c26c84af01dcfd21c60c08c0d
Date: Sun, 28 Aug 2022 04:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661659852
