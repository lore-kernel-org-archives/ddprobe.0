Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C888301719
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781232994; cv=none; b=XoM8Lu1TejUFL+QFJb09OooOuNSSs8on2Za4t0x5kvThhsS/IKR9Cxfpv0ZDvOP5KVmdhSmHstN7m+y6mBVd1JnvCY7+jzHIZzqT6iSxvmzUcD25O1W/Tj+sg8+IgZhg0mJl3S8HBGOc+k0E/6a98A4Rh2x/UcDAJuiC7UVI64s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781232994; c=relaxed/simple;
	bh=8+AJRy0QVyx2AJSgkn9sWTj+kQM5mrEkUGCM0jANrBU=;
	h=To:Subject:From:Message-Id:Date; b=ZGA1SI4prSD3o4qJPD1RqV29RQjs9zsxNPC5mDT8WscP++lZxRyY++qqxl8OCHLD9t/TH8hp4bJnXTD19LnnVaHOB2xy7sI9bR9XUj5cL9/0HvhJLwxTkrET13f0zYpTYhHlQqmFUBqeKaQ7HYix0jtn5+vdBVHMmHYEcg0UkJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2XJe9fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2XJe9fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7ECFC4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781232993;
	bh=8+AJRy0QVyx2AJSgkn9sWTj+kQM5mrEkUGCM0jANrBU=;
	h=To:Subject:From:Date:From;
	b=U2XJe9fQxiug3Zcc230+3CXRQ7Q8fz9E3L+YjiIZl2IzwCCQMgaIRgZoBMUpC8eQL
	 KKRHRr55ECvEb+yU8Xy8ufvIxxbUL4wBlAn6y+nhkZQnQFoLQcX1i0KysqY2g23pI0
	 ERAyi46V8kxBYJB6ewNjmPDOQhS92mkgqAsxyX501W3rJLZs1MmMVJPOHvyXGZ1yRQ
	 MLjBDDLNI+Zr/dSTdzuvwIz3yb3N4fZJmb3+9VzmwbGtx4KZt+VN8SQnoyQUAdO72p
	 QMlp8JPBgoScp72bO5kiafD8/A5P+ogbWlS0U1NZbv0LIOoe/ynLD1I1Du2TmGJoR5
	 iMkikczkLie5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB644CD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123299368.6560.9422261449678458551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a3a8019d4c5949c5a9ce8a2bdff44bf2e617119b7fc221dbff95164a07d066
Date: Fri, 12 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781232993
