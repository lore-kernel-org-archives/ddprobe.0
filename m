Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BD57B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D16C433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666936854;
	bh=VdtkomrzaAdqxuRm2vS2PQuG0GIDhSlpTHuIh1SLtyQ=;
	h=To:Subject:From:Date:From;
	b=AHrMiIRDYtogIFBo1CXFKBu2kxKZYzjtOF2MQyU/JPXrdSAJBUvJmQt+ElnI5Nymo
	 Bn3IdfVAJjRZ3jtbT03mYFbBTkvpVRfcS3dZqKPgE9p6h5Yok9YrEsUmP3AU27pHyP
	 8YzlDawdcSl3NmEa9Vw08VObpOGQdJ5+QUN59XJVarEF5Htsd77F3yEreZ8rEwz89g
	 ZlCCH+HkagkV1D3Zl60rONTD4N3T/kaHFx/I8+K4RRnNAMG2ta90eIpnHgEMgXTxwv
	 eMTMhyL9d7161yJYtDXFWQoJICY+oW5yit5OhG1dWwoMzUpNOVqyHK2KxN0t7928iC
	 z3kMAxjfsukWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC9EECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693685435.12276.16146105657166803365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366ca810af8497784f22d00389b717f691bf27fca805f4bcaae28d41612e9a41
Date: Fri, 28 Oct 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666936854
