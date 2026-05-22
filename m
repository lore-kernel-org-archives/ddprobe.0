Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9673A4501
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779436954; cv=none; b=BThtOmHhrvlL/CqwkZWCT7T4RC8csLY3ufSwOwEB2J8RGR7/2ohT+UzSjaNHokHWFTKDm1s3b8s4Xnpox0zFtl5ea3BkK2Qg/v8X8TS+BxumlP+LkgZPRkWASY3t+GCfVtfO+b5lkgXX3qcdoairlwdODzBL/bsmRlrqQIL6MPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779436954; c=relaxed/simple;
	bh=oQU90iXp549TRHXypsNpVKCpTpyWuRzcCp7Zcbw20bU=;
	h=To:Subject:From:Message-Id:Date; b=Y7zahSLHG9bT/kzBRiDcHZmFtKbraKFY801TfMISwoc2nEu9rzhjiT4S25IYpc0bp22kp1VxJiMas1uv5oG4xiX5RO0Akhg0lHcLLBFWlkKeLUwoWMncwKB4JcEv8HkeVUB4dpSCEpxmhTecZmbleRWfyWvf2FMw+fcdSf/uhqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxwsQvUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxwsQvUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FADC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779436953;
	bh=oQU90iXp549TRHXypsNpVKCpTpyWuRzcCp7Zcbw20bU=;
	h=To:Subject:From:Date:From;
	b=KxwsQvUusjL+AsKLjITw9T4wUYKoo31oy4iUcc/IIvgO5nOUD2zYzCODC5nG4+BPk
	 ozzl0hJLq6XHqpHC57u97rtM3aarXF1xnR5wmWBXYAVMkXyDaPpO7w6CIggv2aN2r8
	 uHodBPLevuw+ieYwGx4VuBjtKFg+2qDh8jr5LN5t3OkGeOqUYscQc3bqLt3+SCHfln
	 dB/P940ufVYuU74qejBH5JdTAFrvS3fk45L9eKZVIsgpEGJXSuM03nf6HzBdGeign8
	 ttp0czdzqnLUSLhajENxEp5YKkG2RfpoJDDxYVXMLXUYt0o7+l5FQaQlFq88Bpcvva
	 zu7tKVU/WvMdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B2CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943695368.12346.1600850939381015955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b693fb70014cd2474ef8a9129e1b606ac959674f38083d03ab4eed4f371339f5
Date: Fri, 22 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779436953
