Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F64AD52
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgHi+qa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837F7C433C9
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699370896;
	bh=AfHCdxH/31KYvcIkEyGPOsZ2FldPeRzo3npdlrIF4gs=;
	h=To:Subject:From:Date:From;
	b=QgHi+qa07KvEunFaz1xAbCl4CK/w3kX1g/b1WFTOmXG47iP3djm4j+7pI5mmuNxv9
	 9np2JXTRut/OFRgPctwaA7TpIkxvZEi3kWSWtPPcgg562O2UymUk3+GBlmwyA9iZUP
	 PVhMA5aurfdRx/Acjtxg2wQaY9o9f5vdfRiKsFXlz01vCp9hNiy8hri7kpOVi7JaIp
	 KAp/tpjF/5J5QfjD+Vqq3Uckye0lmbcR1IP8WlfNNCN+T/y7rlH+5KzmkULKOmY65L
	 y5iBMb4Kn7AjRLlZdtTiTcn5PzcjEmtvhwHNKFihlhLA2uteUhwZLlCROngSdyGh1s
	 LHS8i2R1Rdspg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683F4C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169937089641.10572.472476547230801546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d2285dbba1fb1d1fdd181bf57266bba80bd1b8369d1c3f09ef465fd480b1ae
Date: Tue, 07 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699370896
