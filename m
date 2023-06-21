Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC46C147
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AC8C433C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687348388;
	bh=ms10uNwxpadNNzdeGnFWsFEJ+ScghbdBMHxDVYAE5Fc=;
	h=To:Subject:From:Date:From;
	b=u+xzAwzAuGVIccddmqV5FinoufijtKrY3cyadOvOHuZ2bACAKh4tajmQR0j8hQe9t
	 0NsIitNYXKURGk5tDZGJxG45nGq+XbviNVRNGhuu2VNWimXv/koKhj+KQtOnaFXfVt
	 BgpP2dLFsZZoU1vfepXXxtQ0Y9zeNEFMK1KShaolbVh/BZBYVqFC3Gbt9mW86UmmQI
	 wum34PMi7OQLvSH/74QaA+tavtSjoUHbNMZkiMro9tOAHvlzYMAUIlqH1CwUGglgml
	 IoPx7H0w2uq7AFPAEolAReHTLfpySe6b/zmcm/eTV9mwW5afcQrG5xsf8KwzJ3HJRg
	 v7hVXeoNyaYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CDCEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734838866.23354.10823090987722807420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51efd96b93b41c16cd8d046dce513f5d7f0fc0da9cbe28b6b7aa1dd6dcbf9d3
Date: Wed, 21 Jun 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687348388
