Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459A23209
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2638C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674247325;
	bh=iChtWamZFmUJUlo646ulKTEsfxBrM+t106I+sJlTOc0=;
	h=To:Subject:From:Date:From;
	b=ur86V8/edf/B+RjOFxpRHEyDgjb7XfTgzgxKvYlHx8Jv9zMGNAizSBA3c5PkUpxtH
	 nUUuatmvbkY+CLMHw8gs1GSPod1KUZSmqKIopFgTONmOf9gIrgV0te0pFCGPAVc/rv
	 2wUfhQKtfyL1obqVB7UFpAvvZcAneXClHRvgetlO3Jhr+9gBqEsK9kbA879qoogcTH
	 etBE4iWwvmo964WvZKhWrvtR8TXDnWvnyXFkSfDLBrQzIwoCURPT8O6pxPRsvK3Vfh
	 kkrn2aQAq/PHH01J0EYjNlTab3qmFnhi2GPLOBccuR93sDhhl7POwQkr5M+SkObeiB
	 RyoYOlWYAozdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B611DC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167424732572.20492.4615929405022091815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7726617d7a33943b8b43f92f359805be36ee7fc299b28cb24c5e9d32b6a923a
Date: Fri, 20 Jan 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674247325
