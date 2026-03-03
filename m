Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC563803E2
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532893; cv=none; b=Qzo+Y/p5L4liJEwWNz8vLxHe9VwnpR4z59dgX66S/QS4JIHwcQNSnKO19AxtK7jNsWufOMx5YOcc6JnWxDEMZJjEak8nV/KEnJebrsQvA0NbGy8j9sX4c3uvOY14OfLo8moBqj+71Wo68LGEn6lH9d3y8X6TOWLcnKdtJ3Fd9zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532893; c=relaxed/simple;
	bh=J+p926DsyXo49ggA8jH3/rSc5EPF7Ky5FP8U8vHm8Co=;
	h=To:Subject:From:Message-Id:Date; b=Fq8KqZuHXaSVEXftOtk9Qg6SHbgGq2bjTbjL0xCS8psq1Zt9Y875Q5Tco6+Hegu5vT/iOyyAf8yIz3gXUFb7FGepKgd6RsUNrSay6mpgVwdbKRqOSFKJMOsEJi5l3PfPnC7sHUhy6iUhJVFq7MA9oMAgjaWXTwhWaxO1GRodJ30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxoR1q1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxoR1q1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF175C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772532893;
	bh=J+p926DsyXo49ggA8jH3/rSc5EPF7Ky5FP8U8vHm8Co=;
	h=To:Subject:From:Date:From;
	b=kxoR1q1EY0IeG5kdpV1X94A5j6m4eV+AsRxosniBs/L+5gKH/AH1iL0/NuGsRmwdn
	 Li3IG8T+cLrP0ZkG9f7XQCeAbXe6KLHLZpca90Nj0RasGbZ0dJsXu2TlSTHmfE8I6r
	 jvjA3pt2kJfc1dbH6rgykNFZpSpqeXWxkJ2ZmzRhsjlEIeQ1FExx/iGsy3zXSA901t
	 AaUyUISbQBRShcbpKHRYZb77CmsLTmGskmttmGNAUwLKGshd2Ft+do8ODjbT/41H7i
	 8hFGN0MXapy0Olp9crmtVzqQhw0PbYXXqKxQ9bfKv/5M5hFa1AhauiaOenEhzIdaW4
	 Nj9A8BJhlOMTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B855EC049D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253289362.6286.3770341383001600652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41650d40c272023517edf76861956f8eb70dbd0a44d476122056ae45d7f02543
Date: Tue, 03 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772532893
