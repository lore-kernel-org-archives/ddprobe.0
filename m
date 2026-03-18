Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C373D5220
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773835494; cv=none; b=ArowC+oDHgmVFLH/Xhwp/OKH15dP8YvPaaPRtvPo4+E7CeM7+hQXXcw+wMcsI3QfriQdGKedqov1kkGwDAakiqJ9Xg4iIBSW1oyOEtS2dZmVrMldN+Sl8Wf2uijDZ9f1XdhglEWRdWcFX/Es7PYiFYzfa8fYKgpXi/arwcObPMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773835494; c=relaxed/simple;
	bh=y5yxYNkVi+VcyGNo8Ih+aPY2DPpw6ud/bZwOyuPw/lU=;
	h=To:Subject:From:Message-Id:Date; b=Wr+kBjmEDT6Mz6tLeBCpO+1bpCaQ+NdDe/g6YB0lYAEVlE8NEKeOyC4vXkpSZO+4OSNcP3qM0pPUaNrctFkGK5SIwizIoQGcA90NURUwPRqMcXhiQtdg/EWTe/jE3mSzgsqytcL/niCvzYbQp0aQ9Y788JqcUJHT4jJRLechbVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiUAY/YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiUAY/YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC057C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773835493;
	bh=y5yxYNkVi+VcyGNo8Ih+aPY2DPpw6ud/bZwOyuPw/lU=;
	h=To:Subject:From:Date:From;
	b=OiUAY/YGOsGTZUihiEb1BqTAADSmy/xJi5MSDjqJolFXsCGQ8hpQZAFI11wmQV4L5
	 JbRsdfVlMsEi9xMVcONaWC0n84zHArTrv+OaTk8+6eqvSByxCmfZpzgfF3VroM8n7P
	 P+vSWby8Ck6iHcNhyWlI4lozWjCGaIm61mEBtZG9kgAQ9il2OEzhdsXJCg//ln/UX7
	 Cx7N/V4lwzf841duwf/arM4yC5xjAtt8ZlEHFGY9DR0j+MZ4CgETs9Rdji9vindSuH
	 EveTzbEMe0fIt87tCpqV01kcTWk9NGZA8ImL8mROl2ldWOBwjCmgIdq7V+gJ8uDuSJ
	 i6DHBwvQj/Yug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966D103E169
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383549361.11203.3955242674004251127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3789c337a82bea1e507ed513003c56fb803de09b79f099c1b22c6782f0376441
Date: Wed, 18 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773835493
