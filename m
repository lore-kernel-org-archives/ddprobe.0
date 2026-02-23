Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147E5262BD
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771818894; cv=none; b=TUGeeqSDzTiXsPIZHLNhXHYCxQc695enl1uEJFMKiJt7jHBWhQh4X7LZtlZm74VNOGwY7vCnRBihU44+eEovA0Yv15lboWcYBqb4Xd5FrWj9nnp5h5pgjWh719DnbKH623VO3RJBPxwPp/uVfoapGOMn6H7JD8JtxH+/BmzTu24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771818894; c=relaxed/simple;
	bh=rCOSiw3rM/BFYJCFUiiTUbr6vg2ibJm341AxkTTgQDo=;
	h=To:Subject:From:Message-Id:Date; b=Vbgqh0JrgXljkWz0Sb2/OXyi9dCQlScMMPNaJYFO6tkYKnp8N4qySle176fUZzzE5S/WLa1b5rNcyP6yh60VidGKh9e1niLBrltoi8DcgHKRvbuBod8GzUxiTAVK792+Ti0iXZ5lgojgiwBfv7b2J4UYzOnPkZZcbO5Q+CG/zIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFT6ie+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFT6ie+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD06C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771818893;
	bh=rCOSiw3rM/BFYJCFUiiTUbr6vg2ibJm341AxkTTgQDo=;
	h=To:Subject:From:Date:From;
	b=OFT6ie+nkknyOFN6vXnPVL26A3ivm1Xi8FQ7EkgiLvtxLwkPLJoxc6sBYA9r5i89r
	 DxbMOgKI/EdGQuvmyN0mmpy/lngsXhSKc6azXmkmfLHI5i7dV5dwD/Wg/Krn061dhz
	 UuPPUxv714/Thrp7lP8VkQv5xTn/UxJnZZNmx3Ij/Hs2uiN9q2IZNgL/GVqdHy/u5V
	 9Q7+1F2cPBKSSQzuX0C/VEUV3uAI8bdD+64/vIsCuRug4d5gFOvyub9HpolwrCSIBA
	 JGwKLHyaRlUKbSHnP8z67RJfPr0pZR9fvmPwQ4eVnFSXm/e3vT15uNOsXSLqShJdvr
	 rDtOvGUV2V/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99573C636B9
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181889361.4158.16355251525953849475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c32428bf5a02ea36d405ed1b89dd7a35887f1b364227ea00e44833999a6fd65
Date: Mon, 23 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771818893
