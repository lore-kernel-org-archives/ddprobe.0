Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB8C29AAFC
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744373393; cv=none; b=ICM5IMvurmHR09NA4+Hr+vS1NzOdNRtFX3L246KPFQ1iUWNpztFudiQBZ2MJXHi/OjY7Il/zVjvC8MeA1T5ZgTIz7bC32wObcfyaOcb8PNrjSddJJbWinvHcRNiKlHSSmPWUfsEO1ZYWk81NCXHz9xzvnQKI5862ZT49GdEPF8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744373393; c=relaxed/simple;
	bh=noSc+ocR7EUFGXyIvLwjyBKCncXl9ZGkqqvp7jHD5Lg=;
	h=To:Subject:From:Message-Id:Date; b=qa1gT84QcRS5gGzEPBY9LKsCNyoWMSVC5LoyV79Qcys4iTarE4JhS+Z2YgvZSIj+R4ZpQPKuon1msjN5+XdvlM2It8CeyTdQ/WNUe2IuktiNjoXgLuVQis8jwMNbXRgCEFbtvpSeBlJYL2sf7PJgZdSKzZTboj0hbgI0oZoLOAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObeNiGJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObeNiGJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4387C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373393;
	bh=noSc+ocR7EUFGXyIvLwjyBKCncXl9ZGkqqvp7jHD5Lg=;
	h=To:Subject:From:Date:From;
	b=ObeNiGJefffeSZwdhmPg1FjhfRTaxbc/wBL2Xjsua8/ALNSOoTzDAgpm/2Fm4O0Oo
	 nmZKj2ILzNok0fBNYBzrrm/0096AclT4bPv/YkysPCN/sR23ESRAY5/eBZ6SUT6eyn
	 JxT1aLMlbZKUykr+nwoh39qQIh2hsTt+111I9K2T+51ZHjTFN9SmKbuMb1vEKi2JN8
	 0UW4gVCvhpNeDzHMH7+KQ8TfFXG4DBaJwGcaSw5RDnOmPAOUOfVfhrzF45rNkWb6Zz
	 wWxnMtGKXLnjELDl4F4pxwpHIHFL9IKplHgGSQrnZVbtMXmwRd/5PlNcyqD+P2N12Z
	 trPFeOyTkqCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359AC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437339358.32021.14443181412617666992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24d26bee6733656cb95dae1e641180e3065ed268012433f62f65aadc728adf2
Date: Fri, 11 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744373393
