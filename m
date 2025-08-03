Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73F48F58
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754222993; cv=none; b=GDLSHEZ1zzNIojzaa+NWbfYBHQ4/3hvO+0COvSyr3/5yIbZ8+AVLO1e2Db/mU64mMrHDFUKQvMcMchbXP2WREJ8LeImPsy3P7xi184+uaaTQrvdBAMOA6G3IJ35k6a84/+XDIFwZOchYJgezW1bnXi3O6qjZ4fVeQEvmJHy9Hlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754222993; c=relaxed/simple;
	bh=MU+PBDEMQmK3Q9r8axDRGCPj7DlPV9Tr17R3u+CpUAw=;
	h=To:Subject:From:Message-Id:Date; b=RJKfn5K0sY5y4N2FtG3ARZQKV6jBL47RpQTtAd24TBghck1qUhD/lbP7jJ0wYZR67XFfoH1tHK7mmocE/Z4YGYoSy0XPVg24K8E4nbSyJIw9gJ6Ot3rF2BeYL+UGMGAjOzzSs0Hgd6cd7ZPu+BXG0hKP+P9/31v3CVjDspvIV38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNmCRBJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNmCRBJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754222993;
	bh=MU+PBDEMQmK3Q9r8axDRGCPj7DlPV9Tr17R3u+CpUAw=;
	h=To:Subject:From:Date:From;
	b=gNmCRBJOHPKQLnuT1cNxcFyGA9arzDE7jWHkQ+OnQyY6zq9yte5LPpOv+NiochPRS
	 QsNKV66kfZ5J0SsVygZYy4sUD1PRgjtRIftAC8r2VX4nIhK0Q4bTuWft4981cVU2cw
	 HXmsIDZx5P+TF101HOkn4Gz3uNZ4CZ78BYU28yiZ7lwnaZ51edBptDveGvsJp7MnI8
	 lxu/A8Ei4fsNNVgkusix+dsjDVD9UB9r30MKxBSYl90fcIutnVM0wn+pazmGsjsegH
	 Re+AW4U01oZWMpdcCH9GTU6c7dOE7QgIe5A9v6D1LYgNEaaFvFhreEZrrfOW9dgmP/
	 W5aZ2kR/+6+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DAEC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422299357.3445.949161512824496798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfda2e3fb0fecf9f08f0918b6bae6a53ec962660a557e1878daceb09ac94eac
Date: Sun, 03 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754222993
