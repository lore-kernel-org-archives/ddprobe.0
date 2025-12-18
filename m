Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE282459D9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766031834; cv=none; b=FjFANZMc/KFHrEWHFiDjnEVvAPP/cuz4aNP2940zZx6KCcq0wBKibM5i+B0zNmTCipPEVywOOvAXaV9o7U/sO+Ye/T7a+neRTqt9qQIW6LMsF/274q5jzMR30D73/SurD7EsngW1pQahYv7a4YKdwl5jj8dTe35AXhagKddSKhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766031834; c=relaxed/simple;
	bh=6KPN+79aqUPAkxA+KGKKBr9HhLSpdKo+mw9zrLFgO+w=;
	h=To:Subject:From:Message-Id:Date; b=bdQSwMKsC6x3erdG12dfo08jMzEMPDFLi8cCGmGhbqGs6TkDoDaoMn+epEEjdDF+lxX3NJ0YRvx/ybhxeeXn/cLt0pedn9hMnj1tKlsOOZAnwkgOeTlbWu3ye0w5iRpDbWw70cnkLklLxJKboTppE8J+otJOB3gQDI7f2wrHIzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn8S9ocH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn8S9ocH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766031833;
	bh=6KPN+79aqUPAkxA+KGKKBr9HhLSpdKo+mw9zrLFgO+w=;
	h=To:Subject:From:Date:From;
	b=Tn8S9ocHoiOkjBHUe9j9WNK8hTDI43cQiOB6iJCQXTjlefMe6shXHT1o5xG+oTESu
	 dt7Iqy9uCC+lrQzQymVzOnPYX9HsV/ZUWOO7sxYTqmmH6cDB3uhj6A8TNdoIVGwRqB
	 mnz9fZKQ6pw7gUd6O1wTbo+wHUIOTw/8sY1Wd/2lmxSUBUpjEekztiEmHpDe0fT8q/
	 7OMjrNocQfo6SqmcFJ7qZvkpBueRFZxmwzaMHC+8SvfYSmfYFDn/MH5+eUwlrpu40w
	 fCKCzsTzYgV7UulWmmm8unkJXliGzHaTFGrsjOJicOiKHhZ+MaviHsSSi39kEsIWNW
	 8XRKb+BMg1hyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600CD68BD8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603183360.24647.16141629738667919775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45f69c5e3647c4d57c2b4528f1d32932f5c3535935bced74e08037b7cd45d42
Date: Thu, 18 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766031833
