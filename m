Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC6D4C71
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7606FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669998054;
	bh=XnYWVsuf+4TNg4mmgOFJ0ZPVWT241pWlGU+rtpfTnlM=;
	h=To:Subject:From:Date:From;
	b=HOmCRG8hchkYJW5vvFez3kx+NWBBTHsmamzPfZlRN7Z2bIi8p1dZC/DTlIcDLXOvU
	 zlZw3hMDv1EJuZxM+0M8VOGsZwB6x+YkW6ig6nPy87Zt2AFey6WQ0U1alnd32nOPkX
	 2DV8yToWSS8/egj+f+LoKSrpRzDub4tJggwZtgilH1Xs66qvj95ZRsDmCMrLGxO0L3
	 PB+45gjZq5q7fP+RDdr/RX/VeNOooqahHvtFeyxjKDAAJxMPNmFDC1B6nh4IVHkkrn
	 WXsXNQztQHJeDI2GRmqko0ZzDYege64kmSbCpUXrjLRx8K3D2eOytzZ9QMPdmD6+ql
	 uYma3eHUIvGEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55423C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999805433.7850.10008942463395429885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5034d29e76b3a7de7f7f8e215930d0dd23d04fd5a25796e1975d3326cd90e8
Date: Fri, 02 Dec 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669998054
