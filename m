Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4105E2BEC34
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783402114; cv=none; b=I1qupkh/416IgCdnjp3Y6HdEcHTn7lcwK2WC0XZIuYd6UEtuzfrldbJNju0ZIYCiK3AXvwRkBChm0KMJrMJ/jqctsJWEyK4qxztSXgxXiMu36LHuK7MSelOY/kpN/Fen4wZSgzA4Jq3CTdvXXPdoCYvrryNbfE9kWP1VyzdK2KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783402114; c=relaxed/simple;
	bh=Gt3kdSFdPNO6yj5s+Gv3pcYgTFnJuYpGEqojKJXMciI=;
	h=To:Subject:From:Message-Id:Date; b=kFbfhM9FiAd43nUHaFdhpMxzbhSyjPF5+4eTx+9uJNkBHHedXSbbkT50LIWoLdVIk8voxC6KH83+JWsNSxZh16WsGpOxmlBeGW8n9/x4WgzLG6KTYMI/VR0CrNT4Ex0Jp+jNUE7u9YLqp7mjJgDq4fLAs52Fg9oSTvVvN36FoDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtBOGBTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtBOGBTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF78AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783402113;
	bh=Gt3kdSFdPNO6yj5s+Gv3pcYgTFnJuYpGEqojKJXMciI=;
	h=To:Subject:From:Date:From;
	b=EtBOGBTAjHO+9BzTqGxZizsIsAWu3oMDkKQ7EcwFiUHCQJ0wyxzxHcZx9pelJUwn5
	 FBJxaGjK3YPdBYuyk/4AaF5j4nI9pKSemfahFTMn4iwzUBI8EoARytBeDOIWILpv6h
	 BtAVmjwC0P5Dtx1635wUk533k3d8wl82FEehHqP+FjxApwecI+hFSCI4/5ILh5uSaa
	 Oj/09dimgj/eFbEYCNJwIfl+U8TByqdaOxZRpi3PFN/zNzPnl/7asJOLbTsGW/jNIk
	 jK60TFpn/xZoSp48Br0mEpaw+A5xldgBZcngCy1fQYBULU2RaOkpIr7YrPCvzEzfmY
	 I5AtNH3PHcBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA1C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340211368.27982.1242070265744168378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845ef859546a234d72dba5318127f733cfc925668dfb52f0d3ee5cfe46613de6
Date: Tue, 07 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783402113
