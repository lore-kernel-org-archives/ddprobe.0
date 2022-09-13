Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC051FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C531C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663039853;
	bh=oz+Pz9B42PMfZzswuZmQSZrCCdxRwpjy3QCC2ymQx58=;
	h=To:Subject:From:Date:From;
	b=Vb8Tex6MRhc7Y2QLgfCCAMnxAa2MmirZvOevv0yNbkq5bfc27FQAhdOaV4aruGlVs
	 ibbAE0yPob1MTxNvgcWoN8pfBYHARzM10hcOpKVfiCQjxtHlaBUd0T2AtKwN9dl3Y1
	 ONM/dE2lL2C7WagvCr/73Ot2qLxMbJ3D9mOyWfvCtFGcQgExHlDyGBnCqPkROeWaWb
	 rNgwY1bccte6m4fsgg5edkWbXpaDtH+PwCJ04pbYxafMpAMHQE5zCoBzjLwk9M1SZR
	 Ji+zIQusVpnpK/YMzfUziUaY97J37F1CC98l5EfTzI7HXboPMEsqqI3R0l44Xzcb/7
	 NOpCjcamAuW9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4A4C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303985331.19389.5234535701042144085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5488a4fbdf439dac5d7ccc89f16883fb2cf6ba3fed5df44671d7f26623a1c23
Date: Tue, 13 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663039853
