Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4477320B0D
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5g5x4gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94128C433CC
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698947896;
	bh=mimOb2E/nGb8Xwa8j8wrhdSWUzG7BpsUJw8LhJgJ0So=;
	h=To:Subject:From:Date:From;
	b=Y5g5x4gk4e8H84T6TJZPIokpYFC7yboKp19fXuCnTBB8vYN+GYE7/E4o4VYWK6FmS
	 PH0jfw8Rj+aDGaHixfIrEflybcVcDPejWT9Wp+NG7nfMEknz27M4dT/5vhSxOuDH9V
	 EslM/xHknjqnKNOWC+53zhd8AYRs7pWCeO7zPpiDMrInb8RZCpKGaG1XHswmIIef0A
	 GcpEXe+HsVuKXyYaAg8O2pn+CdItYI9CkvXwLgeGMp541BsiSuzg/54BJmM9p5ViQU
	 kW2GViGyzesN4jPgOeMVRoIs/qAsSQiZGB4WLyi+D2Pgm7GLwPOHZd/jxk+QEikKq+
	 pVwHUZxUd08bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69087C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169894789642.22969.424695269325886541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa03190521bcdf530e35bfb8709b6e1f96a9d845268ea0e811196debfbaa9c9
Date: Thu, 02 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698947896
