Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7211E139F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AB4C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686145925;
	bh=+Nmd/GUOw48fDHosWn8Vp6kRW9VsC+vJX9aFX6+q6s0=;
	h=To:Subject:From:Date:From;
	b=cqWxWeCeA2S39lCSQAiNNTHPlXhJRFbEhloFzjvj2h3p/PEABfG670zrZLnKBp48I
	 2XnhB1NsEtIv7fJ/wwC3JA7jmrrfpxrRD7gAcR6LLIehi9t0S4DPt1uhB9zvdQOCYp
	 xmEfO6SgVQX5Kya+TvzsHIxZdhcJWjMXdsDHR+NDLTIbdd6Q65UGyzrn0PDhTFoEk3
	 EKt8rtMoE9kFHUP1eUuU8PLnrZYptjo+zZRDd3SjYysT80s9gbyCTORBd3+DXS93a8
	 pqpYgFau70B90pEaIWRBCq7U2tVvDXtKyHRxHClrJRLF+Oi2Auqj9Z08C2lfqVAO51
	 SO6cfnC4KxAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7115C7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168614592574.740.11959605383224687532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bffc12a7f26c0415fe4ebc957e2116d7757c162f2ff64907ba060565c547783
Date: Wed, 07 Jun 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686145925
