Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAE87E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED64C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667298654;
	bh=7clatXVKpZSeRfEufdiLgsHwUA0DcLxnN19NRtf1XEM=;
	h=To:Subject:From:Date:From;
	b=TtgZUSJrvKtLTJBN0/KRMPrtF8jPfZINfF2XVbdUmdoo3L0QqynJ71dQpHcJik7oR
	 KR8MOPcWYq+6Io4zlxoBnVi2xyGUXP7ywNCxV5nmwTybDuKM/tcIvWgfm1M07Dl3gG
	 pn1Q8IdN+fR3r0EsxSBAb+lRKrhTiAmbxMRfvsQ1KlnnMk+99H9rbYIs4kiJvIEoax
	 yHtGic6U0tTj7W9ydyizEIp8fVM844f6lNRcku3DPjD1Qw0urqLwiB5qnxUgqcIa+J
	 w9VdlxRHZKDyhgj5mZsSAOF7xrJwywbK01VhRi1yiuhEj5BmkBu4sPSfkxaTVmCAGR
	 tyX/b9O6qbFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F78DFA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729865431.20458.7172978871023870911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedbe074547551a19c9c184a487e7ec22ddc54d3f40d1ee89b5a66fa59746e49
Date: Tue, 01 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667298654
