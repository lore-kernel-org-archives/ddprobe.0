Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578641A680C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788726634; cv=none; b=meca97qvP+Vby277cOO2Tje+CaJ/aKNLtFHUMbC+IXQh7OZKcjlX/Z6rJoc1/el24Q5BwomY78vd9zA2wzKMjcGXHCvYZyvgMqcYgKQpMNOj/ZwpVxiyMJ6KuuR14xxF2KWAxnkwL8TRSGBg3aWAMICibqvAkb7gTSopx8fSRh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788726634; c=relaxed/simple;
	bh=DJ3CUhfGO3cly1IsMs4CgWsnUDhf0SpK8Jy37iI+LUI=;
	h=To:Subject:From:Message-Id:Date; b=c5OHfU4Nv6ZAVr8N2Q6gOhAhe1xoL4lc12xiQxETNhzgStoxzXnNokBPG7skrGFoSKitZuGqXRANvY7L4oJPFNPktRYABgiuNjVUXvkZ3BXr6XUZ94HWg3azYIThDCsOuyTbVJiW9J/KxHCmMJeWR3eOWzlCIBOVEoT2O8h5LJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzMRrTFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzMRrTFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A3AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788726633;
	bh=DJ3CUhfGO3cly1IsMs4CgWsnUDhf0SpK8Jy37iI+LUI=;
	h=To:Subject:From:Date:From;
	b=VzMRrTFZ8v/2mf6JW6xtHcRvYxKkwA4lf8oD5EJ/pUk4FzCff6u3B18/r4JL387a5
	 zk9dNETHALnWP/JmW08SLFTjLHLNvGoF6TOzErKNaiosxdNTGGhpFotUu+U9mJcbQ4
	 xQu5rmTnDX91hS0W38gJgCN6o5OmoWhImsb9qBejxxpWm92Qp5c+lLNZrHHp2ai4N9
	 ELwIIOEfAVvu+x6sUfXQuKrDbuwtUSzpGDDoDI8KgdzSpxHpOSVVEF99DechsRdNrT
	 VAZuLKI6t2W8ObHmxBCXCnrrBxw0PXO9WtPsRSPwJQ9mDkc2eZT48rZxrntQnfa6i5
	 Nf5oNrRuV6azw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE725C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872663370.6916.14517967351576116439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12670b5f242239ac9220906a492aecffaf155179d1a48ff371b8ad0ebfd6a741
Date: Sun, 06 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788726633
