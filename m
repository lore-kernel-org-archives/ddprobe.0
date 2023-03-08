Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D157B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0175EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678262466;
	bh=Hlorx9QOhz3RGD2oBWUSwpYrhV4Eq6VBHbzoYvFiy7s=;
	h=To:Subject:From:Date:From;
	b=XKyFw5rj8LZiK2zac3WK6OBR/cKOje2937WoQXbF8EXQ5OC0qjkJFgiQTdPGzl5jz
	 T85FUC3ELdaaPa+WiPz4/vgY80/UpKrrBKmFBGO11Dn/rrPuusHnboy604KVqO5gGf
	 biWRj3drDLvZJ4l9+7UJP+1ZfExfdPN+CRuh+ugZHu+lFamYP93fnALV+kAn1Qnyft
	 K4HP6YyRkIPCTZRGU/iD68ZCAWn5Ty/3L+tAf5XIN7SSzcq1iExvxpkt53BAUo1lpQ
	 Y31h0Q5VstuEtl/IP3hb9iIknJE8qye1eUi1d6rQYLT2nFDFb9UcM1SBVWLqWe4LnK
	 JyuMDB5RY9X/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29D1C678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167826246585.27749.8358642297926399550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a9553b0972d22e2df4f174846f5e31e1df0cb6fa0734af30c8e7fcdc98268b
Date: Wed, 08 Mar 2023 08:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678262465
