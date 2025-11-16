Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124691E5B64
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763328114; cv=none; b=poxpaWFw1TTqlAtuCvt1SJtF3IL9m9NMXr4GnICKOnS5AiIEEZXOVUVxXfCGsI9JgaDSoUdyKjQse+/ZwhnhaKSZw8R/Va1CGz7jPm7AeIIW5TkaMI6T+DLD8oZYa0jgb0lIaVmYrYG710nuxnue9Q5Rdzw9VDxzl3bCYhMSEY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763328114; c=relaxed/simple;
	bh=h0mFmF/l4bSZAwiVV1QVDZbk5FvI37tUlYE2rKll8pE=;
	h=To:Subject:From:Message-Id:Date; b=DI1b2j3G2QfDtw8g9JkxPLTd9jtL//UNTvn0OGD8IOsa2/YfAiAV4+SQP8mLAgC99I8k5Q0Utijw345+Jx8PrFXaoDqzq8a71QR6EP8pznm3IPUIlgCxHtbpJVmMAWLlfN8hIDUXg8U33dRMSDLqviO6M5kXoozV2F4NOr9DjpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5qAhydP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5qAhydP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA34BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763328113;
	bh=h0mFmF/l4bSZAwiVV1QVDZbk5FvI37tUlYE2rKll8pE=;
	h=To:Subject:From:Date:From;
	b=u5qAhydPUcmvyX9gjDBPXOqIVe8HxOoKnkwc9AJECHQXFOTKr852pXbjQBV+XQFbx
	 tYixkL9/S1iwfKrZRpRGkXai7KdVtpiIQIV/VJkUOWZdmBXrbjpnDbIIzBi0v2wQZe
	 vP95Gcss52pp1NtqiutkXVKkOQ6I4ZdQ7aYQOTbXHK/r+wlUPoR/Q2R87Al3EjTUZ0
	 1EISyaB5MIu4EuAL5U+scHp6OlJULbeaHPeqO+xxU1nstnSQVM/zdkkBfLInePpDPy
	 diaHOTpGObPU+ktRXDUnxis39R7gsvBpaXzjPksWWDvhvUr4XYdIYnkB5urR/AX7Be
	 fWgiZUz+Mwqyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED46CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332811360.10454.7176294653047798859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbec49e031edb16edb85853c745c248ace3f9892848828899125652f58e4c10
Date: Sun, 16 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763328113
