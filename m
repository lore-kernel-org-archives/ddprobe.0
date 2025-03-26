Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB21DDD1
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742987994; cv=none; b=LXj39CLQehZbRIt5tCFXk9EK/UwW5DUuCmXQIvXLxRcMLH1ejk0kKWTjrZhPddWIyCbx5vsNFUu3fhAKcDl/YsXAuqH0V+rcgweU5pVFkb6/MTKcxVPKzSZ+Yzd/3k8DmL/bb4B2B/cmqTPb7B5eM12tPHpDnZjMb/CFrcCzwqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742987994; c=relaxed/simple;
	bh=dZeiSa4bU2NS2nzmJb8poWR0zN15J7v2za59U9iOcAQ=;
	h=To:Subject:From:Message-Id:Date; b=FMnzHjowQ19ZOk1TZU+/CuUkM3y3DnlOErofvRojScRPNjtUrPyLrNX4tmWBtsXgJhQ23lkJBQppaKNd2Z2Puk9EfrHC21n93g5/lmdYh2a2AjjyH2eUmDZlTqDfe1ZPpWdHPV/YX/onWzh2wmNh75gC3rfuC3sgGi3JH41hU9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCas5Sn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCas5Sn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8B8C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742987993;
	bh=dZeiSa4bU2NS2nzmJb8poWR0zN15J7v2za59U9iOcAQ=;
	h=To:Subject:From:Date:From;
	b=KCas5Sn+onSDDw/NkBSR3gFnapAcGsT48oVGhaZmXZUaLBifxdCRmSzii22h7u8Ef
	 z3FmE8+exuI2JW0ghHQlnHMyWmD0ZDccIAWTiCqCspXX5u/qyevvJKuBeoTf2fckZM
	 rn3h5uXh5SshkPOfnPCbF4uQ85Be/2wI3fUr3CZd0VQvfNdBP+8PTgNxBuUzHDQWyv
	 MV8hU4JZxr0E0bPNZ/TrJekbBX2y81uIJ3jPW6ppt5cZ2g8lJ3m9DUbGqJOzqO42cz
	 nyfF1X4BPJUaYJ5qVoaXcJ/twMpOh3eq7tc/pZKbpsJae1bDxOezQhg7h5iu1CUF4V
	 Rrnc/wjIQMJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A247C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298799362.13522.11707999962962489563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a79a387cef6a45ffa4541636b35b13b83a958358903594e2653cafd24f4e2c2
Date: Wed, 26 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742987993
