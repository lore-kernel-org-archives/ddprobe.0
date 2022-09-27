Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A7833FB
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69740C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664292653;
	bh=9duoPfLcoMjfKL3wiAUMIJmKUDYLOjlDIm6iZIAVv+E=;
	h=To:Subject:From:Date:From;
	b=CLT7Zh9JBmKMhxevrUYmikn1Z1U3215UJPVsKvp1K/HSV8MjTqAlVAsn33ObrRQaN
	 rdNb8aqT2qeVF6uFU2QS1CYDCmJqMBdFNTUMrPkPE1Jg1KJV/fHeYepL2j2WYXtBHo
	 v6V5nFDlLg2hUoMjP1ibk8GvxfejNDVFZUrZn+zvfwfRpxaOS+Gzu+ShEGK1y2x9sO
	 93hsoG/y/niDzV25ZNEoU0daGyOhZzwswxNl4XuaPCaCy6HcGi3RCTnpDLBvy/UGTU
	 wkUNFxuCxhWQXSThcNGYMDnTOzJn/jkgSc6Ea7CIj5CBH99K94K3r6WljL+XjPLc3s
	 HizkxkTH5LTjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531E2C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429265333.17553.6039360490485417346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ccbf501c98d7fd16c62fcf5867589e5c2beaf18ade3534fcf52c04089d2288
Date: Tue, 27 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664292653
