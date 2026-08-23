Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6633E2BEC4E
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787482834; cv=none; b=MAcCf9AIadlKkqqamgNVEecUXEyAa4MNirIGeKDNsVWsJY07MSK9jqukB47bXarlr3DYLMUrHwGMeEQN0gGKoDyyuxH+rNs6HGJmvVukK9eFMCu7oLGZgzyvIfFyOI04BfXFYROX9xLMlxUesX2CQ7OSS5HUJKS9QEtX0J0d1wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787482834; c=relaxed/simple;
	bh=L9Qn/rbTjWby+ff16bfhzS/RDEpN0lt76cU7XnC+/mQ=;
	h=To:Subject:From:Message-Id:Date; b=L7rjyr25vBopfLhlftJbH+9oGROsLEzsDvzl/hTTjlDaQdhvpkDIzo+23q+vsj/Q6o1aY5P5snZ0NLclLxDcR8wT3Nu+ZChv7098ch20DjBTG9f7thjx7GUm3v1fKfeTHjaRD8ezf2M/OEPaYFVtZ515io2+3e7T/oVa5gmWYAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1cYY9NU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1cYY9NU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3982C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787482833;
	bh=L9Qn/rbTjWby+ff16bfhzS/RDEpN0lt76cU7XnC+/mQ=;
	h=To:Subject:From:Date:From;
	b=r1cYY9NUzWcnAXxuHB6aFwa9YYtLfyfGnJUeGI6r7JF1JBNDCjIFTuakHyvL/Wyxh
	 0ZDHcUbQlBUgDqTOk08qndwhqxiVi9YP+lOvt3kTDpOKcMgEiSVSXyNeo/33oH5eaf
	 qzRTsPiUeg89a4OHQd665B0w4nXNNeqxb/MLs/UD0lKZFz4h1vPAn5KLtQRPCzK6yc
	 tc9BQElnyObPdCplpeYZSh3VrmtYsLkjzDXmEq+FarD5vJt54fjSwSvPpk8hGD+xRY
	 xtdvBkT6Esiy19nINxUcGl7JAGPUKRDrQWFZD0b4Kd1DsHnm25UA8004UvoWGt4Bjm
	 JfOA1CgfAGGqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC749C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748283368.8177.7539099534487278742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e1f0ffd85ff6e546d61dd2db659a922e9d2dbdbf1572c37aa3c4b97aad0630
Date: Sun, 23 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787482833
