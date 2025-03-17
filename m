Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BB218E97
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742197794; cv=none; b=ocikUqq/w8Wl3qMi0acEDpCqycYq6YAmhf1BYF+fDRQ1R9SqZE5QV2UFixHJ6cWDfOsu3po6RpFrutL3Lhp44cgRKFNA8764iOIFkAiqK89CAoFzyK2yq34sB85tpoYv7zbqZLcht6kEpVStQtE9jKCRVYVL3jfi8YcVl817kPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742197794; c=relaxed/simple;
	bh=zU/xO+ATxP+ZH5uGK2vwK0DmA6PY4b0dmvF9LInKi+o=;
	h=To:Subject:From:Message-Id:Date; b=BfFQA6HXi4JC6Ni9TSFARm/zHhOrs2k86mF3saf/c1rO8QaLVEzJMjZb/WMjZ2QON+qdUDpkLMTXXbRamgpSGsAQLbS0vqZNj+2TrYpSm/fzzmAqbyj206LeLcEUHwWcGQZtcp1gAhcPHi/dlJbH2LpWgnikLxXYNCvi7KxNTIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmJwKDMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmJwKDMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDDAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742197793;
	bh=zU/xO+ATxP+ZH5uGK2vwK0DmA6PY4b0dmvF9LInKi+o=;
	h=To:Subject:From:Date:From;
	b=UmJwKDMZD05q9xGPg5neBqYaH1KVbQcQX8EKNKfsHTIrGYrWp5U9LNs1UwMPfE4QB
	 wTTcZHY7vROWlM1K28b84tSWY5MMSGfyX16OLh+UOlKagqGN13PUoCBgV/AfAZYER0
	 vBwx7F8e/+NEePB6BW1Y8cWHKW/9zcgnn0PAhWSWCvu38qWL3iTy1ptUXqRMfnxzdr
	 nml6yOTowHU5GKU1XuiXrqioMdzelGaJrv/eRaYq2vCFl+Gx7eeEuBEea88Tcx4d/4
	 jNRTmcZcdrdhyLtN9pzYDxe/pesGZ//xyK3qX6lVuKfxhQ8biOKx8VzghroP66kNm2
	 q7616sbmH7Jfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B86C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219779359.9601.17173593340666529247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b60b484147fb0b76c72fa6aa5c20991c08bf055148ee31f95abd02186d6f747
Date: Mon, 17 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742197793
