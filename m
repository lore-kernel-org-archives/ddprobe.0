Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25EB368
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F710C433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670531487;
	bh=RWU7LFLdmEB+7ufKD5fWkNGQuMh7gFmx+qEg3sT2oUY=;
	h=To:Subject:From:Date:From;
	b=A+4k9MGWzE601d160g8koY1ylxadNb4V1pz9j9z4LR0UQMnmqlkTc+RUC4R5+m8/7
	 e7SwOCfQHbndbWIwhkKx+4zW1V+z/+GBdPGE6R5MdzYf4H9N0IeTtE5TpIEuvRbDlG
	 ysvY7SuvGxb7wlpbTcUkAKYvBb72kPz0WEZdJROj4S2fyS1xQP1IuqoHUqyRJZPJ/I
	 8ctsKjtI5BHoNvWj+zVHQikIBX+ZiXkrXM91i82mjrfazAI0AN07yuKBLF88IUlydR
	 v8Svowg9J+lwGCuUADgwsHH2rBAWI+/pJGzqfaWzUvfxIkY8XpEkBL3p3cw8yrK7YG
	 z687bjn8ULdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66ECEC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053148741.9662.10464178056810985642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a5716f5ad26eaf2651f3d7f6facb834b779467429ebdba2e00ba34bd787391
Date: Thu, 08 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670531487
