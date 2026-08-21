Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E01233955
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787295034; cv=none; b=B1mKnaRx4A81mLZcrMEyyjxk+ewusxxeqNgu4DRz5uA7eWU/6JjkRmL7byuZo+caaufU1EmmcQDKec3EG1R4B628rLIEc0vPT89wIn8mNiVKI7qun5/0R5WkUJz+vi4AH+FKs/U7avK2SO8GVkCTatXDqRA5eT7s8P1YLU7i8AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787295034; c=relaxed/simple;
	bh=av5Z9Wt4p+qHQBp0+lsItlSEzNtaMGPYAIQvrYekc9s=;
	h=To:Subject:From:Message-Id:Date; b=Pl1F3pq05c3GGLOs7WBklbTrPNzYESvF1thAszojdm9rp1sosRJjPkhCInayoDXv/5pj+ek8D4T5Zw8Wius+r9Itjf3dZ7NBza8HXuLXW1OzGz+U/mBu5CpiYSwJjPRCd95DfHORDQwxaYi8Gd5pMSzMn8S4+GGWQ+zLOrIheeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiwH2VTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiwH2VTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6C6C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787295033;
	bh=av5Z9Wt4p+qHQBp0+lsItlSEzNtaMGPYAIQvrYekc9s=;
	h=To:Subject:From:Date:From;
	b=LiwH2VTD+H/UCAQRV/UZQBQ1JigTBWBV1LcVl16olorv8CpbxkT9iyZ+0sxFFQ4iB
	 fRxs+9oFv1ErNBduCdzoVOMIt922VdK5sVn1vn2kHDb0eWB9ewKyLFzzUyLYKoLhO1
	 INL6XWCsCvC7ejpUP9ul2KIVM8cfPVry3QedahbJPvR7UiRNZxV05FbF9+9MlR7IYY
	 ksJMVG8DURj8X01W6aM4UrcQC2Vv2Lyf8QhrZguzK/bph9gK08AlMM6pCZGGTeLEIZ
	 JdpxXybPHP1RhlIvjnmq7ySJWjQ32Anj88jUyPNWd0cXQrpzN38PzIvQyHcK3DvrYh
	 YU5S8PLYozccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6683C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729503373.17526.2809387840744117541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f283b484082179efa55d3da2b8560206a8b05e7d827ee9cf49823bf47ca864ef
Date: Fri, 21 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787295033
