Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2690A42122D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786052434; cv=none; b=GeV5b0BL4AEOO/aSuzzILITdZkhs4mcdxfTZ9qXtNgsODSagMo1ggN0NMsK504oBAl9PpRmib5TafK92PA7N8omNBpjU3lAaJsEIX0xSCaDBpd+P01iS0/qq3OBJ+3rtlRPbkLWe6nCH8KHMan3lQmUemDQ8sJ6geVphtNWjZNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786052434; c=relaxed/simple;
	bh=Wt87FmILHdw2wfwUHHzSjp94lHFAJBGQK93iY2/vymY=;
	h=To:Subject:From:Message-Id:Date; b=S4a+BLpDEpW82Be+TuU9J9A/qY2DKPWkPXKfXq023Zt9Z1VTudsCaAZIp/cUYNnnBs/AlBGydWItdLQSpy2BLWEqgiAsGutOvp/Zpn6oO8/yRWASmBM/BBti1yjAeZAYgWysFaoueiN3XWoZqv1YZYZm7cu3bPHOiecpnHt7kHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAacExrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAacExrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28CEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786052433;
	bh=Wt87FmILHdw2wfwUHHzSjp94lHFAJBGQK93iY2/vymY=;
	h=To:Subject:From:Date:From;
	b=bAacExrAHhX5U5V8Oh1td2Q1jrRhRWMa+RmHMte2DH2DJzpxiguc64oSnhF9sC6q7
	 wpSo3js7k3Z1YF8LQv+l7qRnSF3L4rvSv5VxXCKolY1gbdWP7K5Mic9bUJlLIr95R7
	 B43z+MZ66tBBlg+0w3solnkKYJODQDEMcJfxUh4/+Gmx18h2kUnJGwqSfa3zQRBDu9
	 U6zcjZ3BfzydG8vDlcQOXuPlWiZBbTYjnNjbebpUOI7o9LpxkSx1zpAfl12Jd3K4LR
	 h644rIKlTnFm+VBDLkQ/kRx5yKHvme5kIYK8S+TQWa63js7UAKnBcvTvK1Cpuo6qlb
	 nCeDS34CFcWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDCEC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605243369.3528.16495763191090815462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8068517bc13c8f06d47cbdd91987db1c547b672ea18f4b7914b9fdc7bfa8534
Date: Thu, 06 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786052433
