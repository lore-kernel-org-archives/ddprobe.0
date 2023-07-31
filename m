Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ACA629
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 02:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE71C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690769528;
	bh=3/jyrL8nku295UdnyKyY0i2fmkztlB1su59S/Wdxp3s=;
	h=To:Subject:From:Date:From;
	b=QclW5oV+twlf1+WvLoKftypnepa8FKU2skKtxTEtARm2fwS3ClEuOzZ0HCIhgvVjz
	 40RO+64HTr+gB8FS3WdhzPRc1ftAyJGFsdyCd9nNutT5g18fYlsWg+T9AXR5kMbuZb
	 KKV9WDFhMqXhkskrppbtLiua2LtPjJQSWYL3rzr89cjNL73oOgr5J7+aQK/K3Sd2qd
	 TIr/QzeN0oF8NbUMMPh79VNaXScs76CtDsvM7gU7RS5JUHSTBCYcTUmUP571IVXMw2
	 t0HRjdc3F2bmMxu0LZd+FaaeoGxmvRXCj5deCo7dCjaaNw5iIHTpTp+MfjOAlyQ6I4
	 vmgDwz09HUGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62B1EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169076952867.14180.9435416762983180885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e587da4a418f4219f7ada38eff61b78916e57c2eb1384a73464728c7e9cf2c3d
Date: Mon, 31 Jul 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690769528
