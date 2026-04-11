Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348A9370D53
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775920654; cv=none; b=nLBjT8+u2+JCLZ8VYlzKGKRFL7bPfr5n++TBECU+CHg77qAtHAYAbrjKOWt6i6I5YhtHIvov1ebayydQmT9ntg+W65o97T38XpS2Hy2PNAGw7RPWgGWxfXoe8nA0fkI+6aFwpsI5rL/reL+ZqNzRuVKrGh+iWVeEb9bEdAGoGL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775920654; c=relaxed/simple;
	bh=qsCD/agM7/27tgDAwnHQYfs0+HR3DnVnpqTUbxyT3Ps=;
	h=To:Subject:From:Message-Id:Date; b=rDE9sAEkmSFuEvuUingjSILGuvZUv9EfM2Xh0eDEHuCaQKFUhTARsbhfabvQZC/Yl/4JztEIQWKcbrJFZeualS56rTLCtSN6T/wA8XD6h5tEWc9YpzlCJUW8lWML3exk2dOKVP90C7GQzJHUunuqmSuofOPfGQpWWCdHjIbyahs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygp6ZD1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygp6ZD1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB98C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775920653;
	bh=qsCD/agM7/27tgDAwnHQYfs0+HR3DnVnpqTUbxyT3Ps=;
	h=To:Subject:From:Date:From;
	b=Ygp6ZD1cC7yiINmEqHSXgFI1VsJAUAs93XSAkcrFEMAIIwrrV0LHUh/4TXZ/8786X
	 s1vqxVaLIxuwM2dxVFGB89a7wn5VjveUKRH8yDNLQ2DqHLfh+kSHt1OcGsYtwduhsB
	 uqpkdTk/9fbHZQXyHaYWDN6PQx7mm5Exlenh1Kf3uD+otjQjQXL89BvMVBmGARYH4a
	 zztbblG7yTuIDbjBm2M6ZBhKtlDz6hiP1awYBWzAGrC8ZBkT1lf7XTWU3SzF59xHRs
	 clcYq5BtQVCprIfyBS59K85H9lKIBEd6G7CDw39goWBKpcxBZlgPF8rvoKf80G34xV
	 CrjJ1ased4wbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB912F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592065369.24903.929745756158404514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70560ca084c3786dd80db078c9e0a25b9067b66b669c0db893217f3c119635ed
Date: Sat, 11 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775920653
