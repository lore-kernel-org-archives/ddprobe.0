Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6FF111A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E665EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687821788;
	bh=ULTsPXu3kKxiG+XNNWI3TyDmYCwUd9fIqH96zXVYQqA=;
	h=To:Subject:From:Date:From;
	b=MyQy6AT60gIL3YlLMhtHK5F1S11IiAxcNBSUpjWcmvMcbwI6RPlFB7/03vQIBMp/V
	 i0TgaTJNHiv/YhYocKlHmrSZxwLdXyyr0MxciAdvKOaiCNynSXgGcKTpZpj9I4lX7d
	 U+pSHearGynTW55pwMWgQhLH/7NZUrbM6xT6GvJsRiivh5R89iYK7UTEfHiAjYLSwb
	 it2yYkoW+2gKbTF1GcNGMNQaBQFC4xgilkELc3AISTl5hb2vz5ZGzfPW+hqgDAu2JD
	 SvrqfeOcoYC3qGGVroe2fX0Frg6AM74CcBq2FtUn+FDjMN24hKRmmDN5YwQ2o4dnT+
	 JvFSkuiuuF2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55ACEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782178877.15976.16517524112891207956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bb8ee6f3e8c4326d7393c051b4ab00549d5473478e6bac8e27a6f86c3a2ad1
Date: Mon, 26 Jun 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687821788
