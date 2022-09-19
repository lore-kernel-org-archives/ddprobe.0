Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF9EA31
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCF7C433D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663626653;
	bh=eS4ad2MYmojuYv0tTddratiR9wWLzqqSeYKtwBpP49U=;
	h=To:Subject:From:Date:From;
	b=LvQYxhCl064D1SfbW6HAhcKdOtZnDWQbikcpOF4e2ra3mhHXOYSy/hxtl5fs52LS4
	 lQkjTlqAzh2FxMDNFa8T5LrVzbSbznYpe5q9lqAEoEtGRCaSDKqwD6QpInxKzsSa6I
	 XNIRpLQJweKARW39KMUp0LbrBUesW7gvldzlpQhZTfSG3AcdOm+yr3cR8h5nax/CMx
	 udsnv0FK0Epad1/uUt9y0skDKg3AhudB1o6iswCELBCaZglwcoBQFNtxfb+O3wNjiD
	 sIoQxL47+icqtNnpSDVBPaAtidYP8b79UmM/729YqbF+VdKHgXjzghlGuTrPI4d13F
	 HTl+R4hghDxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1B3ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362665335.17798.3731723877890453927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7debfd8f02a74293ae6a7d76cbb0ec595e3b5f9a2615ff6a577889c4f6d0fc52
Date: Mon, 19 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663626653
