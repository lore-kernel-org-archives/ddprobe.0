Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A871801F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 21:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 004F4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 21:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686433326;
	bh=jkqt35fNk2Cu+iOf+Lh2MVgOCCFlJsSCUFQs6392Ggk=;
	h=To:Subject:From:Date:From;
	b=ToZgUBsOG8tssL+jcwfjpU0P99CQUZUpKoJ6cWbKmSE0IVxqg2RbS1o4lH+WdgLJN
	 1hz06roSdyfj5+uZCCOZoL6Er7jQ1GFK26md3ar5UIcctYi+mBlPl2esV/UuxFvulG
	 /2wmnm9pBaezsPCRCcUrSP6AOwdYEic6dTxTtB4HQnDBpDXYEggWhApEEuKV6KJbgd
	 486YpiIpV0Edrh4F0Lvagij0I8p3MU5fS2T8KJFblger024yastPLv+oUo3DUVi5DK
	 xZTjZvzgIMjZgUkgF/vGyLkdem8wwuDfWyE5RyyEpJrAsp/W+P3k6G40MWIF4ATdMK
	 iEUMktDtLFFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC51C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 21:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643332580.1043.4640306651086927411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f00c48221fc36be2ce929b82ba0ca6da5de092f6de829e15fe840ef179f393a
Date: Sat, 10 Jun 2023 21:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686433325
