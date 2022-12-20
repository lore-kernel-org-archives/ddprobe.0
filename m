Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD57C7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D76C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671535887;
	bh=wt9on2jLhvqQcrsBY+0GqMASvSfzgaGra/8DkNWcyEs=;
	h=To:Subject:From:Date:From;
	b=nIpoiwvi8IVmaDD46+vE5GfCsvqiIRGGCvuzJzOjFJi0Uq4WdbRWO3nmgeGyUvjs7
	 BItrBY30Nxc6JWrMEDH+ZkpWA2m9y4Ztoqzz5vRFUXSbziLJPpuURnu4qxEiJRRKwf
	 BhMR+NuqRIiRqwi8Lp3XGm52F7iYAf/XlqBEuK9l/+GAGttW74Ma/3ccYpxDxCzHea
	 SoFMVgtYjXaFqInevYKbtq3FSlmsKVL5Mdnqhq3EEsRZAM6+e0xgV4RwjMeI9u7+Q7
	 yZdnpScdTyZw9IwQc7t6xUPsP2butvIP0ZglnRnFVc2490kkUWyzCqOaKFVpERSTTS
	 zqB5JAN6XdL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D88C10F1E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153588740.23867.13017292984529336144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4988dd5a4fa55002ccc61551c6db024e59216b244347b11402a8271092380ca2
Date: Tue, 20 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671535887
