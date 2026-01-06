Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1913D23BF83
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767671034; cv=none; b=m8Grs+f7SfllLBh3Zlb46EG6Obd62PsKPOWAu/xreohMErBgGyDxAK+9O9RkDZ20k/PhrLZLiYNiNeOYobZRRx9OKJ1un7o9uJc56UmlbSQeGqFSazNjhy358wtlT80863S1lFibiU3kzLbXr6Sp1f42aUWHa7OADHkbbjmcGqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767671034; c=relaxed/simple;
	bh=k+gwxMrll0LdLiKEb0OdVsU1MC+lCGEgl5cYgSUPtOE=;
	h=To:Subject:From:Message-Id:Date; b=sKPIf+GDcViz4/DFopnjTNUs+GXAcWqD+fkzT5cnome/DigxfqAvwRTyWQoQnzn4ooPlCIcz3/kxwZJvtpAbc9RNHlohgqdeky7FgG98Vrz9T0CVYKN0MVmWWP7KyT8kPZdJuytHikeaiOgIk4FCwK6WfRextB0ow7xtVIyHLBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/eJtNWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/eJtNWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB35C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767671033;
	bh=k+gwxMrll0LdLiKEb0OdVsU1MC+lCGEgl5cYgSUPtOE=;
	h=To:Subject:From:Date:From;
	b=W/eJtNWgEnZpH86tGCHjCdFdMSrr4+JUiTKYVxw5W9xhR4ESrxrGWpJ7O2foB7tHk
	 /eThJrKh9EIXxbrTbMammYBDOek+wIRNsrE0geXDb+KV6GtPOw3lvuG10YpvQcT/xa
	 FPnciFzav/Sp4JFBGXI7snA6yQXL34s0NnKPPttJ5pCxo5yDS335qrN7uanVbgFBy4
	 OzQ8dN6nFWkaReAFk4THTGHSGdm0IUVyWkrdkHuwBNZe0Eeu2fiPkJpANSzl6XSnsp
	 01T3ZU/LwLMDdYVsb7CNFkiCGKa6EtNxjlNNj3awCGzjhFgSTqymitgGEswI/ycF0G
	 bOBTLBnz8QrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED99CD0431
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767103357.27642.3486880174054722509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3db846fdb73055fa584954cd9fd56f6d825d54480f564a714f87d6dba61319b
Date: Tue, 06 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767671033
