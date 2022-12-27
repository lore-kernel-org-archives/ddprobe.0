Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD02F624
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F1EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672158687;
	bh=jXcwEwrYpCcCM+TjsmYScLlatDuKXnGlpMxc1gs5JnU=;
	h=To:Subject:From:Date:From;
	b=lKuDZUMCEMWCWFTM2SKXPQ/rzXef0cfI0o3ZSQu7//G0bnbGCM3P912IUAO+NQURd
	 t3bi2r6C7aHTCy6rFmrYmql64sYZx2S08+wTjKAErmgSaxSgsqKLb/uTk3v4sxUuiT
	 +rxKTAhb92BXkliRaz6MRw6/eYXxDLH6hYmnutl+ZkRZ+xj322KZMYMY7sCKSPmeqb
	 SPkAM8RM4ODcXSq0GIHDTjO+v1QzLe4grmZkYcMimpPFXWL0DC/jgZHOKAcSYWwmYc
	 SpDAPZoJw5Xec9QAsIM4NGJsDqPdI2cC/pxD5j2mZEA/TkCzL+5TsiyrAqEkwTUNWF
	 o6t/ARkKq87NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A305C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215868738.2580.7721839677879548500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13a269483a819613c5a9d82c3ddd1a6e88839ef0c3243c6cb6670422b25843b
Date: Tue, 27 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672158687
