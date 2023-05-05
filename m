Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48498621
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B40C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683246306;
	bh=Vz8fcSREU6qHzrPBm0F6Co/8j8ecorftuz3yTvWFebU=;
	h=To:Subject:From:Date:From;
	b=p6WBgys9Zntu6DUzls6dEk2duVLsz6E07PbA/huodlp2xGXMVK4jnsTyJgsCRDTHq
	 NCAmxyw72YvdTpp9+rOAvuM8OjVoV9W6Gn8g/VlXtBikUoArr/obXmGyOIbTZaEGJX
	 n9gfKw7ve9iEyVSZR+Nd9ZGbsGOJsGrhxfTgTINXvbQ/c2uZC5z2Eo93dwa+jJNFeJ
	 hN/cpr/FXkkOoBUA/t6z911Qnv8dxWU5PRV6oB5zFFR16CA7q0ywWZ/Dy9gvJtCCjE
	 eeB/tsbuZrmhW6pEgW6gcXFfOLjvVLlUxXHA5DV/Qv49HLA0SkrVaJk96FPU+MYrPh
	 4hyKnv28+zhKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3932C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168324630584.2665.12902700449115209163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096f5c267531902ec09bc6cf6c3c8ad03f6bf0a3445601df033334df6d5b0dc7
Date: Fri, 05 May 2023 00:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683246305
