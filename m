Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0B425A65D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737897954; cv=none; b=PtUSDaQJ9plMddg6E9IDW+pr6ODn5T511YSK3qk2z32/rzReeOQbTb9vf6aKpgzj7znwEy43ivtaF3Zw2agkFcPVlFU8W7IJ55JghPrtV8zZX1lQ3LKe3GfXhzXr20asEqXdoWxNkUG61bYg5+SQWxy0lXazrajTtoAaRPXEbHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737897954; c=relaxed/simple;
	bh=bjds4kqBKTlFYvbRKckR6BJWjxFwcGlZSrIzYi6GbdQ=;
	h=To:Subject:From:Message-Id:Date; b=IC5mjNHSe4r7zqe3hso2/TJ5YI16w0PwJGx48isE55H5rdlp+ju4zjOjYP2LDirTWOCxL0mqJcuGBGTMrVJzQN9pucBsaPeODDChKK53f6bNEN1EbxVIUJu4puxanpRNTg+x4I2PBZGJQyeBApkJ3XDplYBybF/VWgA3YaLd1qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJWdWv30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJWdWv30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D7EC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737897953;
	bh=bjds4kqBKTlFYvbRKckR6BJWjxFwcGlZSrIzYi6GbdQ=;
	h=To:Subject:From:Date:From;
	b=oJWdWv30dXdvWx3lJNubTL+NC4XPBsvnirSX/W3ETa/HWM2P0qbR4M0BnZGrjOz2G
	 ZlqUDG40EqZUCHvJkgOmAYCRVlN7H+j4eDtlSatS9mCTmi0+Luz+WUlGVhMZETX/Xx
	 T3QVltyEUG1U1l3PEdGsARk2X4Q6PlBlAc2KqM12OxUxRaWoff2m1OVSZ0jLD5Qhfr
	 NcpMa4Zc5JrCvQXNHhzyCZPNVAg8lTV4V2oj+mSvfXOlaZW/wQTlmVFOQMMuVYa5IB
	 H+VHMSRxe0zuxarHlklZh6faLMcabe9DaUwJl+FnRx4+7KpCYD4ETy1xgFsIunsp32
	 GRrsHH2zn9zkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DDBC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789795357.23272.8172125801581257643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44daf40f88d826b12824ea6cf467743e3995af9275293dc2363ae38a44a68031
Date: Sun, 26 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737897953
