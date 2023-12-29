Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063212B6B
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZeTabda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B3FBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703870296;
	bh=hZddye/g0oPtxaPU6gZE9SZu64xMjP/yYLLP8FGzUd4=;
	h=To:Subject:From:Date:From;
	b=qZeTabda9XHBsfG7qsg0e+8a5Y5SsZ3cgRRBUJsEs5PecSHxf4/O2+b4SgD0TsHRs
	 MzGl/WKxVNnP77EJeiKML8QWNdB1QVHlLp2EcrSpEigI95QONFBhzppMRU2lvNcjE9
	 TaPIP5vV+iA9xYc2ajB8nRCPuGeCHgfEHzEysf5AVA68hGqStj9jf5z9UR2igoNCMe
	 pGhsDsQQoXlj2ABwvXN1sZ/OC8DFK5VS0txvmcRcEuNwWJdOvH0DiWFRaqoMjcoPWw
	 zy2oz7nXE/Fpruw/AZmoYCmGyWYMo8kixGa2pmx8JIQiHZGishRfsp92W/I5IMses3
	 lW1Qv5hGV6Qqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F436C47073
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170387029641.7034.7027596701970374402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51435780cc1f6f761d501cbdee41a1ad79e3f6d0c0bdc4a01a7fce8f1cfd19b9
Date: Fri, 29 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703870296
