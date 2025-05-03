Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33127EAF9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746314394; cv=none; b=TyoEnaWFlf0Znot2aWTWxsijHRlR2s6m8AZAjs17BfkAVtxQEy2xBh9SndQH8ZWLbBuZiG6lKgRuDD0Y01DmjrPXWK6UCeNJRu/zdvu74YVIrAfdqdKcbUP5LLIH4uadecOnact66oYxrSI1hjwJdNINnPeiGsZ8sEyXctF3NsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746314394; c=relaxed/simple;
	bh=Yn/cOhZzrwZhVws7t8i+sFGF93NhGdb6EPYdCeGwvD4=;
	h=To:Subject:From:Message-Id:Date; b=KSeB8Zd9Px2fl0qBuQQ09MLR8D7plr2BtwrRNDgNQCaezTOJwk3tXHMp18vQ3QD7O3LOT+lS7y+MLb5eAJQtEixwnxe2wX+w6OiWbgxA51nMlniDA86FgbQG1L+swNhKkdUO4gfHZkgAEXVovxOvJxwjdl+2ggxSkZ0/An2C1gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbpHPM69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbpHPM69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D3C4CEEE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746314393;
	bh=Yn/cOhZzrwZhVws7t8i+sFGF93NhGdb6EPYdCeGwvD4=;
	h=To:Subject:From:Date:From;
	b=GbpHPM69nNT8vn0Sz3plb1uy/AZgbxPEzgcafK3Mda5V8i7U5QA+v/V5a+3RcHshf
	 D8EeaE3NkllpsamlGYbHkb6s2Alu+9SCZc24XusXhS34aDlqs+gPhNt8N19gkXVsla
	 WIrCaMHJvAwZpkMj+qsCcX5f0tyBpDLVHdFwcO6uzkAMGNmm/FmYGwPopKsJMkeeE0
	 5QGtiKacfLLfacKOJsb9QuC7YiE0SozcDsIwN1l3O48ZBtHZ9VJcaBFuIxukyqD9WN
	 R2CYRLxRvI315gmIDq3d980rt080/7aiKWadcybb5Fz/SyYCYpJ4/7HW+RSbe+P1Xu
	 /fPcIaWxwmDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B6C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631439358.8118.12758601266801731577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d09a204ee513b23eb45637e249321cb1751f9803c57b7410965a264b76a232
Date: Sat, 03 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746314393
