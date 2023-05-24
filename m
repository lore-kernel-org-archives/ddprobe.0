Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1399F33CA
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 16:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F40C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 16:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684946705;
	bh=5/jlm6nKJx2XJLzqU6kdU25lxno3+W7PbQQ1wWRzBu8=;
	h=To:Subject:From:Date:From;
	b=Al1JAR2zQ+FNgz1PEgYmwzBVIGG6Dv6pNmos1HcpSZj2W6TYSoa0EGEv8zKG09Mp6
	 AaILmZVoIqgkk+zhsA3ioVaCdC82Lbizez1KSFWlwB9r50+79aGj+iJyTb4U6eaz81
	 eyspsBFC30+rJbwoJ+B0q4YF7U/ih2kpe0lyk+SdHnzRK1J0KeXgqfgxzKhZ4oGsqj
	 wbcyR180ZPR50BCd34MvxJ8U3iyia8MQqbCGE/pFX/rfzVk4UiaqK6nonokPwlA7Qo
	 dBjxYY89kQS/zK4LVqRTn4mjr1q5jsRFfmj5Vlaez2wNAv7Fg4DB7bomAduCp3KEZU
	 frYTaoveWXe1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE67C7EE2D
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 16:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168494670577.4732.12308904782398388319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7ba44b05e932327124d9f64e1eaaaaae9352d4d656b96af27afa236b896c5c
Date: Wed, 24 May 2023 16:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684946705
