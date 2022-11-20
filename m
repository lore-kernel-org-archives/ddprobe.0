Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD17F211F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3B8C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668963054;
	bh=TY8aoZoBkv2oydmTFA2XRebHhQxtuqM60HFpTlFtxgU=;
	h=To:Subject:From:Date:From;
	b=YOGQdqbA6N1Nne+xPyz8H/TcN9E/rXM61UxsyecVbCgIN9gljlkta6Ky5fewGYyzT
	 9s8fIftpQIswDiJQRFv/M1O0hrHgesG1ZKMj40Hf8K+OHwYtIOo3UNKcbXPXQlClbN
	 FVWt3jmakttYLJu5TElO+ZJ4kvh6IeXTCgRNYaO1AaloU+vB0xlqk3li19FTKWuMCY
	 mXlXE4QH3em68hy3qJinwV/Y09LccN+q/8z+g4bMTQQqEMQ/MGxHnSkjmIS+VFlhKu
	 fkQCXDHkWFuALNV6PszMwu/b8unoRTNWNgSa9aa+FbeJjAqlX1MZqu82BdjOiU3WI4
	 WtANaJ0AzIDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F51C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896305434.26064.1340994805756447173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb7dc72ef5254f47c42f083a59b8b192b53df3c59069336d24022d49935e742
Date: Sun, 20 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668963054
