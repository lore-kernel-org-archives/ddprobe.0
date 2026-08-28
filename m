Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6AB36A03A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787937034; cv=none; b=Y/lDKXsFslU0QlMu5o6bmpHRwTSAcuevFnEtnzH3bQayspjVvMHUuRe/SawPEx6/MSpa/eKeUAx2PsfMP50Q3GTVSHC2aaXIcIQs2mqDoxbLl/hxL5USgUWisdAS8pjtRKl1wIpSFfCZ403NZNdke9RCJg3aTD6CWgRtBdk2iIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787937034; c=relaxed/simple;
	bh=Ymc6SOAXgCGHYj88EZeq44SNLfkjVWOt02egZeEZR/w=;
	h=To:Subject:From:Message-Id:Date; b=Dy3FoT7cWzBNjSYzQejco7uqzwbB+u6cJWcTDAL9MF97hSGcAF3M/O7mQtNLr9U+ObWJBJnsD86OBbXF8VYI6GDwfrCoTEPneXnm2SCK8suAsg+vO+38fXWbqaHAOMtzFYTl/BS0mSsdFVfVPv8Aho3a8y5s7J99JB5+LeiRPC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfgjsO7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfgjsO7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5749C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787937033;
	bh=Ymc6SOAXgCGHYj88EZeq44SNLfkjVWOt02egZeEZR/w=;
	h=To:Subject:From:Date:From;
	b=PfgjsO7VUCUmBJ9uSxAq4HUw8QehImKU8HWALo8Q+VssPc6POWb5kCk0LHp9H4agN
	 bIJfRQLmjvXx+21FRCaql83m4rxbZ1QgOKig+7cGMDZTdPEzlLyC/+1/yUH901O9eq
	 x4ChCPq/56XGWf2YowoFIb4kpVVjZf1yD5s91cewctAcgdPLj7qfIzdgQkvLyF9XQ2
	 5cj8VCKm4hUXycVkx2ej2aaGOOTTdD2Mw9R0plsJfQ8F9PSD/bjmZzyxajPbAj7VtX
	 +t6MJjVKvS6wIjS+HxZmCIawV8zv8IdRSDEl6GfFLuW2tBsE8fFTB7/8U8PEgWwk9O
	 3HyTr0DGkofCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1817C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793703369.7006.7580186138401743491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f9d4f1081c41c6cc7a056499ef588ef987de2dfaba227872d8be83877ce39b
Date: Fri, 28 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787937033
