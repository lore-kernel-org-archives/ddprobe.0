Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44942F3C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB11C433D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667602854;
	bh=6hBOvv1PNMJ81Yvl0GTOMEInKL+FNByQFPU20i4hxCM=;
	h=To:Subject:From:Date:From;
	b=CxZpVIy75fricN0SdlbQrtb74Wnv0e3rGvuqe5QiB/miK8cOHm32ZKPLFJg+J1z9h
	 LuIplxIiwFOhtOMtJBOChs5kKusYottL0P0/vkF6TyV+4vilw9L48E+Zz3HQVzwMec
	 w5lA2cbxhvcMMDT8DxRjITGlL8DsTK7QIirRf8c/V5fRWDe8GLY53UxNmOS1Y8lPz+
	 bpOWowGmYYCckaUDs0MdNGQTFWxwyTCpAjxo1tgKxR5jwHAAbuGul8Z9tGktes4Esx
	 w6s9LlcZrQUTDsEl2dKuoENYwJBdRrPnrM6cJeTPL3AngUsjwkaqAfrHztHfQIHcj8
	 TsiybPod6c5HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71CD5C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760285444.14434.17885796070633037492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a528ad9681302bcb0715aac30cb161038bf7ad8362dd4a4d8b14a13c0396ad
Date: Fri, 04 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667602854
