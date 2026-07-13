Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9184A0C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783974514; cv=none; b=rU0WWkuQUO2treaP/o+aHOKYRRBVFasf7k0jH1Yjz9VboJyam3mRc5M6Cm1qboGqsFevM1Z7v00Qq7NvIrAfC4QWpotV3wbSjF8y5yLeY0ejzmsmlGyAJV6GBWHYwjifLq1S4xDq3KZKIPlzSciqxg5mZ5UEv2thBnROwXc8Xis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783974514; c=relaxed/simple;
	bh=H8imrKZqn9Cz0N8kVDwrtp761iGIO0CtYm9K960x/5Y=;
	h=To:Subject:From:Message-Id:Date; b=l//Awise9lzdyPGbs9Am+XSoJzC6PjwcyfOlmtaeG6CwzL/ixAReBsIb40+EBUCZbgaCOEyyH/6FdKl2zg3JOrmBfredn4B7fDp8XeQDkAUW5mscVvZFu4bG7o3d2R0cc1MLEkvjDJAgR1ux5zuNShG26eRLBN83kNofBJLEDEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxg4EPfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxg4EPfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06C5C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783974513;
	bh=H8imrKZqn9Cz0N8kVDwrtp761iGIO0CtYm9K960x/5Y=;
	h=To:Subject:From:Date:From;
	b=cxg4EPfxKV3vqER8K6yMnt1NlvaIgOMgJJsSw6GRRfurc7xjrUmOgugFuGh6Q9dxu
	 plMKNQGPJyJxX8wjbhKUsEfZIS/VPgqNFW0f0twV0Sg1mmHZDWRMkMS9I8MizoiiUP
	 hokJWZb43iaX/b9cOQL97AtQvbq9j9fQRJnrgPkGDOsQ72+cw5gQbIqbGydI8mcZeg
	 k7+ehF0NmRoTbXXEgU0DCoq5fEsOcb2B3eE8/Hm+5kxZKPWECycCZQT2de1YjtiwoO
	 MUOm5ncbCsitBhS2LFvjzrcj2lsnaehcme5/GS4Ae7xVt7i6flXOvEntgf5Wgw2UD2
	 az6QbN+WSjnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D2C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397451369.967.7178912732408252090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b099d331c8a943388c95f9a8c3ebc6afb7ada99ab3a80a89d2e3f6f9f66c3499
Date: Mon, 13 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783974513
