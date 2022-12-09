Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D898F802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D83C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670563887;
	bh=pDTNmx0dnRHK+WF6xqb4whtVOIck7v8D1UFeE1qha0Y=;
	h=To:Subject:From:Date:From;
	b=TIeB/c8YE3RJh4pgQzSwC/e0aiZTdt7LElvCkoVGDoammThT+bYrtERmFPZ73LQWo
	 WAQxniook+vd1l8efYYJgHkJZ3NeZ/6mtqY+2TPa3jdTNX0j+dCTmfhK+z8LtysBRS
	 E3G9GubjtYZT3Mu89zBHI87L09OQ98XDioQe9EWiwW/XidfK4UqpfNHncbHUSggFSF
	 Ny0gYf3kRwPR7gxMEJqcXx1xLiaZBHuJhk4yY4lincJMvbtuO+imfvr7XR2ezGzGsa
	 OzD+8x3JG2iqXE7PQsIMDEmwFCfzIEJbfpO1EaRdtjQMO6G16gQunt1/LTGOjCwWEw
	 /kneG9Y7GMM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B49C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056388740.16829.15628213008988872877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b11ba25e4b82abffdecd0ed0be7d8a9a2a61eda8483d9f8f17532b6170f8c2
Date: Fri, 09 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670563887
