Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AB025779
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720896023; cv=none; b=mHyTDK6daPZqJRZ8VFp9klRFwo4d5EzGObCtgHZsAGroWUyuDKhJEAWE1eJ0LBNVdqckJ4bp3IT8b3CntWcsKA6V/ajzogdzVchylSujT9eQ2JJUgPmjrIduhKTDgP9rf9Y5Z1odPSkwldVPdR8YEAOHJgHOTa2Hp6G5ftAU6cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720896023; c=relaxed/simple;
	bh=pc3ajhotBuRMpg3VbKgLmkpPXdCGiP+TX10llIPL0xk=;
	h=To:Subject:From:Message-Id:Date; b=g5f447SIwHn+AhHnhuA0a709hMHXlMDj0wYYaMXZV6FhJMdESRV6voAlJ2rvuMOXb2z4TqSNPjvo2W3paV9mO60RyxuT4Qoxm9Unxk1c5/pWEN9eqtDU5GBJgJgd0vvoV/xL2AcDGByQDdJgq/4xJZMmGYhde9/9V3VUVv1EIRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vac4Aat/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vac4Aat/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF21C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720896023;
	bh=pc3ajhotBuRMpg3VbKgLmkpPXdCGiP+TX10llIPL0xk=;
	h=To:Subject:From:Date:From;
	b=Vac4Aat/Utf1eWiQry4va/kl6LsLDQAHEDD/vnkjwWOW7v978c5QZfMpQ32/amGzN
	 IMsqGgukXGopkGIM0HUeewUE89uSgSTRLiocSectShE0hKGtuimIF5XkJ+2QjLL2Ky
	 h6m6yCzi9lHOEcUxI1bngQUtpvRiTxCgXkdwfZuM+iBuKIWSsjMrGBVqZlLVSSX8V5
	 Uo2q728+zyciSsADps0nJqYLIW1zYpBnC2y/8IIu+7rVWU1kfA/fJx+LgQw7B3e2B8
	 9SdMxjjjMLI49n5xp46W1UuRU70L31KJzJsC+dD0t3h6fiI9cRVlKJLRPUZQRB9S2B
	 jcwZCiJYkFoDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD24C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089602279.7695.13515058945517099117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa07b58fab2b702aa5e17caccf4b8fbe6ffe212b14bfd2a799ac81f027caf074
Date: Sat, 13 Jul 2024 18:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720896022
