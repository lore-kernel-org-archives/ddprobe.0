Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291153222
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E237BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674748385;
	bh=aDmG5WgFO++YMZVGZAAif5DjglWcCLSvs4kUtwYG4m0=;
	h=To:Subject:From:Date:From;
	b=S63IircbrpkqfK0hR29sscq/PAqgHclYn78Wu+G/36seMYukO3sCUuv149FsXsb6M
	 yl7cVzbvftj+UCd4hSee5+Hc7usSzhGcfr85AXl2gwkihIf2h5hg/4eFaFCkDhx8TO
	 gZSl8uDVoArEn+NLJjRS8NV/rJ1kmz8PkQtFVTXabfuX9ggW7qELMCUZkoyUB830/O
	 IsRpcnIwIQYvgunD6cXJd5DJyqNxN0R9iV/5BNETSzKnq1uccl41bISlqoXwq5+Lj3
	 ldsmreInAooNKLVKLnKkbizRsvWbvOt6tQviV3PM0OzxFpwRo1ax3/YkE51Nr3FKvG
	 HL4a7qgfemHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B4BC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167474838581.23419.12131590137856745607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad0d0340c3b91914d37530c4a321ea6da4c8a7bac51efa1fde9d4d75cec323b
Date: Thu, 26 Jan 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674748385
