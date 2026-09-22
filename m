Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3733F542EE6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790080834; cv=none; b=jIBSzB242RRpNRHdZOaOk3UFpdstZo1SV/mLcjMG6mU1WI6CqLLyOrLYkQOk9d4bEpoZe8Tlh7NqcZOTPjPi7uHFCplOXyg/s/Mu8XNYe3Wg02eWxkb8UkH7jsjZ9s9YhgzXU9JUyyV1BzXHkubqDKFy7aXIkMgxeDASfTppLGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790080834; c=relaxed/simple;
	bh=FH+IdjHwJFh0DNpDFpBSJpogc+Ni4YH9rzVl+csSb1g=;
	h=To:Subject:From:Message-Id:Date; b=Ytf6WbCHRveQXXrGsTkNj58So2o8cRXTZkcCFVG2MTLKKBX6Hbmi9SwlU3nFxvdl6Ij2WkOyqaIJ2fbnkvrr65BqIqMvugFfHXg4RL9836YomZqaZV1ig8fSy0dgyQqvgkLPW+imaQbF0wQIB2juncYiSWshjaY/o2yVarZts+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGZekvsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGZekvsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FEFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790080833;
	bh=FH+IdjHwJFh0DNpDFpBSJpogc+Ni4YH9rzVl+csSb1g=;
	h=To:Subject:From:Date:From;
	b=TGZekvsrjODNnryNMGDUdJ3qvZmEDqGns2lA1JMhR+v31oAfNSaa96uXR1EIBAPRT
	 FMTKs+icnwGE8DndP8oq8IwEhOfpRwf/TryUlHnqxHCGTfauOg6Fc39Qcuq6oaNxQz
	 bStel0iHW3XXB0GM+cKiEz2Vdoz1mkWbaKvr5+c8ACHFUHnrDsNXlRCky8T1tNotu0
	 L9sTsv9OeUmOpWNtPmeYyGoy9YCtb8I/SPudcxPiLZ2w2guyhfqLziQAt0kWCSrdya
	 hy64Jf3wzMnrOtBl0kXEBwYfoUroaunJmFBBz2fu5B/Tv+/GidhRSV9qdpUgnydsVT
	 hw0DkPD1fA6Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08C5C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008083370.28216.15645189948468228470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6762d09c52e4b6555fb925229033055cdaa250fa2b9ae04d879c83405fd717
Date: Tue, 22 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790080833
