Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2621C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85266C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670762487;
	bh=/KqH0ZNM8RSoeGqF8sj/9k+lrn/HYhowTP6awv2BRXU=;
	h=To:Subject:From:Date:From;
	b=a5GZff3ruxNb763LVRYPU1/bpgjcdzA2rmtnepEWncfQKQsXMQxAEtTqLF/Ur3Czc
	 +ITmBitbnZu+dakLbokvEV05ASNJIUIdNB4PUX+WvuwT4tQfeC7YFz8uxmPcHQp3BM
	 OJ5nYYS8ZQ6PcZ4hpMLxRxBMcsObuO+KNMalP4oTUGNe4QqeMVIREhCw2/2rMIDE9M
	 Ap4hcGXHzK8OrLV8OM+YS4/BSZTgm/NHE8akdBifpkfqWtkk6F1US6OxHTOXJU9uk8
	 QWr3QP69RG2ZbABH+yjvJoZy+8SCmacyzyba2cEXfIO8+u68OgI/kVeEomZT8qcr3C
	 rcRsJfDGcnZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F57C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076248739.24555.303687680266994575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60395a8544bb5862408fc19cae956515d1d8a84de365de6c79d010d6140b816
Date: Sun, 11 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670762487
