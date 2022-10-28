Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B902E1851
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2D3C43470
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666920054;
	bh=gzsjyJkXHBoys+f0cfSCn2ACnkmv+CjFhpJr/CvRVNY=;
	h=To:Subject:From:Date:From;
	b=DlZSdeXnCxfDDSv8KCICC3sIaexOH/jGsUuhPVspNqITZ4IQQ2m/Y0W3mjFNRSNa8
	 i/itLFbQnSsuxmtAUbbyTbbCIe/AL781SFK+5oC5JvmDpdsue/zA9oeHmRy5IiSlZQ
	 VmzgIij+sb2xYvFuB23dt8YXj97fdI025YCQn8lsHaSxEiQTqH/bYY9VCpC/eSZcdG
	 f2Y1YrIyZLXXh0sJwnbQFf7k/RAi71PsQuHC/wRCuAfv08pxnsrCpkk0+HuNk8MDm5
	 Iv0QXlJ/wDWxLQvARJ9HRWg2a3WTg2TYzGPUEa5wXBtCF9rCOri3F9lgbgfDcRudZG
	 g4pC1YfDCVx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAB3FA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692005431.29960.16647940728577273286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3320eeb980167d058c56c60b6ff30b7c7175d63ee7bdf63780d5b393b3c7096f
Date: Fri, 28 Oct 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666920054
