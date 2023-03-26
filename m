Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4571562F
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 03:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFFBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 03:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679802725;
	bh=uNGvgiAlClDEorIFXKVXlsjA7TAw58+Kzse8mkb2NLI=;
	h=To:Subject:From:Date:From;
	b=b3T4flYywz7SG1zNOj+5VyOTpKE1SVcNdGkZLQwwZ2DSAbVTZU78PqlGfP35EEM9T
	 0ws/x6pZNF1tx/sl84y5wMAOrNsKgUz7NWfs3C4iIKY2HkrQWL+775U5wnaW1WbKCV
	 YUANuLNQAxUkEMZcqexZv6tpqUOGjC6mH1VleXaRXD6qWFuTkWag4erXLosTMu8RIl
	 hGNg/lKZ+2VaJGkOhgn1l4EdN+GWLyI/26QkWfDwbq2zJLF8qV3S3FYMXtA7XI4jo2
	 j858aPyEDXTm44P0UIJ5Zi23AEds8SusMrGQRzaGe17Aw/hcvMOxvDL/ti3gL5zVjx
	 am6mWE0jmjkhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3E9C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 03:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167980272574.26405.12487509002601716882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d43dd675b1c791b79337610345b09522a03440880e6da1e29740864086ed57
Date: Sun, 26 Mar 2023 03:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679802725
