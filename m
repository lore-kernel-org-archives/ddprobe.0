Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B9030C610
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766091234; cv=none; b=VD9zm/fezeby/S1H7TOhKwOk+OUeDx6HDxN0Yo5X2dJ4+E+s5sxzZSIO6ZB1i+O9ABeTrQAL5mG2kOTqoHKbI8XgbKiiHvQxCunzTMsUxC0zcnHDcAILmXh7/OtrEDdsID+ZapA+VRREaPmT9J/WLApOfaZ74k2VZFgpFMVRGl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766091234; c=relaxed/simple;
	bh=o5Xd8bf4mOXDh+IMTgGzgvuDcHXfsDujK8Kj/Jp0fdo=;
	h=To:Subject:From:Message-Id:Date; b=JQFxR61xsVUC90HqqiEU+shfIGw1qDbp03HF17ySeNOp7MPnzpMBqIm0hoUFsaZZKoa8ez0BZZFy5u4nul/O8Do95WyC4n9HrTSVYWRq2dgxkDzuuW0y2pgB0m+1u+nxgknQZ9sN3pZZ9O9qlWzStjzcYAEwHpRKqnoy/cC9vVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNT77wFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNT77wFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766091233;
	bh=o5Xd8bf4mOXDh+IMTgGzgvuDcHXfsDujK8Kj/Jp0fdo=;
	h=To:Subject:From:Date:From;
	b=JNT77wFwLTM1xAJjtNdio9SsVkEZ8Sl2SDs0by8lLgl1yxNwXzyfe5oUCzVM6zQTj
	 VJGazgM691Rc0e/Y2OfjrtDpO0Xm0bLH4wJRCecN+FzVAmPtZyF7uw96B2XwRUegzk
	 6E+uMfjqK/EiAH3ce5Fj/C+l0dWZ/rqDJTiFd4aZnBehKuunKduEuxZnAjZf0fWK+N
	 SZ2fF25XdS4R3WNWGVABZM0wocbtFe1kTnLzOPmM5RWXRCh4c7RFK2HNMZaPYxuhDG
	 zo/zV9CtVAy2/xDNtgkhu1uefoUnmbBccxLRaRYpn2HXfqEUrZS0zYEJseE2Ko1zw+
	 rhzwo/1oS8djw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F8D711BE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609123358.14673.4644366635521027016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dedbe4a5446c4ce411227c1a411943c77a6a7ae714017c529bf6bba835df728
Date: Thu, 18 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766091233
