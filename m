Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28B33064A9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774698893; cv=none; b=NIOrKgY2S4DCF6JFEdX0kuIZ6ijLJOM/hhDkSlBB+Z7/qMbalOoavabS0+nGQBpp/Rkt1iXXC4kbtK9PeMQpBygN6O9FK1Abt1vpqD7Zcvwf/6mhu091MK5NLwF9p/87lA3Ylwx1l+1pegpuyAYjlui/IHrDDKpCdEmwcfFjUYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774698893; c=relaxed/simple;
	bh=cI1ZnxU2d6zVBfXqVxy0lEjwkzLltSnNgOLUQ6ZVCS8=;
	h=To:Subject:From:Message-Id:Date; b=buMms+ea1grJBeV76ws7vJdG2WaMcOyVSLXhaAbaukdKfqt1t3QHpzQB/D3cFp20L+qovhsoSEgJlQpCPHnQv3sAAjb5uxTkAclRRFVz0rkhTRpEEl6UhB+f8uVOWW0GRXWn6onYca9bP5YnUtdVttonSQ9eMviNKA8Hldha2iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCvVei5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCvVei5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD32FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774698893;
	bh=cI1ZnxU2d6zVBfXqVxy0lEjwkzLltSnNgOLUQ6ZVCS8=;
	h=To:Subject:From:Date:From;
	b=rCvVei5X7AliILhq7BaetT/sD24RsdkNNsRHeFntc4lRSD4/1D3phuClN3VH4MvRw
	 g2IbsfBKzl/QX8SOVLOTmMa9AlHy0mb7X0mRFj6j1tO97GYhKlBU7a9u9alGxWHgT4
	 dVfqz2UoiWkk36WEs3/7Sb4ctxujXgvMByvTRSBYXxqpFqThK/6ZcpdT2JFOFxF2yw
	 yrFmOFkpXzGMmBceSGg9fairpvESVmDe4Q6Dt56PtpSt2LH7MGv4Vc6cYVsQww4b/W
	 WVTaSrkn/GedrVj4xE/cGr6hEFYbYfmw2en8UORQk40blfBkYAW2v9upY2CPT4jSvo
	 qSb41a2DXsiTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C8410F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469889359.25295.449505633466267256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8478864ee489b7b819fff2976b03be4db34c7feab70bdfff74f2b8766c6d591b
Date: Sat, 28 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774698893
