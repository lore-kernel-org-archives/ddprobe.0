Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3CC26AD0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749133195; cv=none; b=FcqSQeOmKuBmHP6imMfzYjESdYfrYJLfo2qMChJ3LTTzym++8KeFeTfVilibbILmlBFsiShw3FXJcjgNtaqzdfPSH8N7v5Gee1L8oW/fPQvOlcmmvjcPnJysTG4MCa4YoHA1CoS1Ukd9nVk/iPREoPVLWX1UCjzAK1nGUEzA/MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749133195; c=relaxed/simple;
	bh=EVC+SfmiRDB1HHb0ktzN9+SGIZ3+YnN2yT0/ZWLrDVM=;
	h=To:Subject:From:Message-Id:Date; b=hes/QFebz84MQD4qRRX160My9rYKzcc8S61fMcG8dh4+Bx5KnmtF9yPFH2txtmf1Wb7OMBaNiydriA/xG4Uo7ysEntKKI5k5s/aXX3IcPn9Wvofv0FftUrKsoeRJd6qEbzZpbU6aFNB2ekfzlqBsOz5Lzxp2gJvVwE8gxlTfVcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HedUGkl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HedUGkl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA5EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749133193;
	bh=EVC+SfmiRDB1HHb0ktzN9+SGIZ3+YnN2yT0/ZWLrDVM=;
	h=To:Subject:From:Date:From;
	b=HedUGkl1I+33WmHWI+6nl4+gzOYugxl1GXQKfuFEhp+Z4UKByI+1G4FLetCnGh62k
	 m0qnI/RGe02CdY3RPNs6zwicagTuFR+LXfn4BeuqkFJZ4fJtR67vb/IfuJnPmIZ4LC
	 +W964kIlQ3ZqBC2AWd2RWtXaOYM0rWP5QRranr/MgrR6CJeh0cqwU4zLgtgfdmD4jK
	 2iFDZVZLOEEb/xr0xXde7mejBae6o4ld1ZIfJNsYbWVxTlTsfCVIQ8TneePOHNLAhC
	 AlgpYhMR/NCwX1nzbt0RyrdYq5CXQ/dUsJOEcGHDWkOalZFuxi/4k8YQZ94xHjTk/s
	 5Ml3rgk8kv6WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A23C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913319358.5810.7274878513170685757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd18464f2b3515ea023c0d86f8144d46dfbf76553a888074da47490342d1710c
Date: Thu, 05 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749133193
