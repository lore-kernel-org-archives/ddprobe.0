Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D3D37B97
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8855C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686063725;
	bh=5BIsF+4u5dhg4JhfQzHCeEEaQIej6xRWl/kvic73RNM=;
	h=To:Subject:From:Date:From;
	b=AnN5+TN1zDFG5vLP50Nr70P/0vEimh2SGh445PNKhne1LX0hpc120x1HJKAfYgVDE
	 3x5GsyjL2JDSbghB21oq0e4UX8EvdCr3qaodaVGIMAG3LLNIqPxF/Ose3/vfS7tSD9
	 VNYTcysYDpH8/ibRy6O8nHzDM98zGm2UIg0GGf8Wh5BjkOdTSrExpup8UgptZVYPem
	 U+IgzzrDvScZkqdQKrJD2bEbiME16j1Hxmb9SIKaeKS5o5X1mpQGVkXh3CywtTIuzT
	 wYQQc4DhOE6c1PrzdRqqxpfalbQv5WdZhdR2V5pE4hZVJPbCRCHhu9JZ1K1Lt9Do8N
	 zRjLw9HO+Cz+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B4FC7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606372577.21314.6100704363919693732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8602cadf6f9c711f1d6b4a936fc47ad4fc23e866662c6b6ffb8e05aa5969ff64
Date: Tue, 06 Jun 2023 15:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686063725
