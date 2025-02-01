Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE75126F1E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738443954; cv=none; b=ttaqlBWw6BLDNTFuQekXlpbAhMTNnEra5zAPBxkDc9oGaj8jzQiygjccMSy1nT4AolXlpUeAJvaiCc8+G7X8OmAbEQjhlQQ2qUN7Ep/OM86GBnYK9hyZN3F9TkpTuD8cWH7oeCNduhpH+FUQbcTk07qf5Z1WI2H+WpykVqWiI9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738443954; c=relaxed/simple;
	bh=YxU8FB34Qvsab6k/adQzNp2VQ9BFZbgAin1iqp/dKsk=;
	h=To:Subject:From:Message-Id:Date; b=gi//cNwWb6GkHV2uZoQCmbKDHRyp6oTQk5hxFK9ZoJrUL69KG3Ji706QIa0P7kciUAN8GK396iQDnwm/jf8NlONJuT3uVIlNVo/z0awL9REtsYmu7kgyNvzq1TLlWFPq0WiMz0c7lSG8EiZvF+g+YZIpKh/x+G+oOMRzxYi75fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SV/lmOAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV/lmOAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3F7C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738443953;
	bh=YxU8FB34Qvsab6k/adQzNp2VQ9BFZbgAin1iqp/dKsk=;
	h=To:Subject:From:Date:From;
	b=SV/lmOARIExnobsS2LnDiuCw1oeD4SGlyNLhg7oiIzc+27cZySr5krujEL7aIaGGv
	 F1WOfk6BReyWn1uIdxc6KlgZW1soOcGJNifu/0l6/xCLi908BmkM3wXQGCQL2KBAoT
	 TgrIdDIRoufhIq3D30WQV41thHgD+uIXBdWEF2FZ6xGIg4Pyz9lXrL6oxyxzJzEgUR
	 Jzdd4dhXMR+7S2t/JrQFqp/oW57CRGzmUCBRPzPtIrLONzpdzox7q2t0B4j4/2szZp
	 DnEJc7qYi2+Yr/tVudci00AKfJ68DBOQtQQCd1nA8feuTjDv88g3r1r1+9zFodzfHx
	 wmbweO/Z/2MeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3115C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844395359.24645.5816957030599455830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4794081aec3bb26a5e45abffe2bbdc5d535cd8e8a115dc2c0631db514ecbe9
Date: Sat, 01 Feb 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738443953
