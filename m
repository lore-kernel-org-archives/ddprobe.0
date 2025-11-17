Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57018748F
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763344314; cv=none; b=VF9l6dRMODoRL6+vwx5AEJov4aJuO2bSrVekHG9xItnFJwcxmKgkMhCZ59VJZFevRbTm5d/SdjDbfBfBWsl8KA+qv7ZICjS3nt/cu5mxRQuEcl+D0MblO72ce/UKJL66caCnle7iEjG9W488KR6H0HRH/Y5GFKCjUdDDaJUmTcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763344314; c=relaxed/simple;
	bh=ysAhphLqJFfyD0U88z+dyhQynfI6tDLqDNMyqiPzUlY=;
	h=To:Subject:From:Message-Id:Date; b=azBe5gR5oIn7HlRGT4kNeRsyrZ7Wml5zIH+GKP41YzeJLwXrOTg0E7CeVlUSZ0anqqSv3fca/Z0L9y/8W7mUqZd7VSYTcOsyFgtERxSGctDerz868S/L2pbh86L09bGpX6oH6Acz/egYocl88tRVmI6tTulBGT0MeKauJFOxIaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jd7xJHIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jd7xJHIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD5FC19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763344313;
	bh=ysAhphLqJFfyD0U88z+dyhQynfI6tDLqDNMyqiPzUlY=;
	h=To:Subject:From:Date:From;
	b=jd7xJHIOdM75TGB9OIAa3uSUdtCd40P/OnYwwtFdvYJ4RU1KwVtheBi6/W9YtNRTn
	 Ub/YIJG35DW09IfO9qhOLaqga4hwK8ttj7YBKgxKIsRFb5iGraqQv8JU/XyI/znCyW
	 UUVVK3LarmxZ9NJUQpSBFhe68eCYsbJbBYB5o09VWoRXUf7j4FXlJxjNQoZqXuUy1n
	 l+OpWaHoRzLzIXfeLlv/e8YX6rmnAVbrrS9G6vFF6BHDz7r4UIhXF46fpDCfBXzMoS
	 LkQUrwgImkHwSMvfvDCp0oD9HYa7APNDI8Yb7hYPYsjK3iBOJzXDlF3UxjYQkfl/dC
	 E4iGaH3DmGX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F779CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334431360.29293.7474912881678918892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8325441951af4a09104a90229e89dc179abed949f5b466483c06adac269b03
Date: Mon, 17 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763344313
