Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C089862E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7558AC433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667290254;
	bh=/rVox5w3NL2nwsg2wAb746rsBpLpoaQoTzc1qWo1jSM=;
	h=To:Subject:From:Date:From;
	b=WPFRmT+IkPxnjNb/6RfIOaYmQ1MYqnd5ompLXHuaw8HetPwIr/+w064bwtqykHUki
	 KKRWfn2dbRjXZgdlxF/L27JOkSiNPn3wzpyIrLyf9kyIvt07fdA3Lqg6LD3EjlKRIh
	 UUziARNLdqbQzVPcXDJCuXCdX6c0mTE3YB+UNmsB2kpUbg+DENDQWwmmm5StPNmFy0
	 1ZDaXVYSF++QzSRr//cPVVNnHgXI0wrMMgccYBl25SZyglwExmFw7fYR94A0LQUIJZ
	 c3/0fjcxDhMHjNQI/FCu5b6BogwIcrvWmUI4ZMn9p1zFH68fS+RrYObOkRH20V/14i
	 IwtBJN6rmbFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52286C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729025432.14356.16892644322058723648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5324db93f300a2c59146170c783d66fbba945b80ad9f65b09f404fdb6a566cf7
Date: Tue, 01 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667290254
