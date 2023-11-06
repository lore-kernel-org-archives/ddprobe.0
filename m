Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A0A168A2
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvBE/DGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382EC433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699262896;
	bh=2Oym2ke2d0mbQkcJJnJ8wj1i5CtnmHCGS/V8I+OFn8o=;
	h=To:Subject:From:Date:From;
	b=EvBE/DGSEOleccc3DVvqIJS8Bs354CeBQ4pv/5DYGZrQQ6Lkq/ub1cWVqnGzYVRxT
	 dsXCj7rbBofoEO6lGkSoc4bNeVpqU8l6SOp3M7NE8XPPVa6q0UIHgj/22g30ZLztA3
	 jJT79jpZeXdNWBbTi+d9XWRcqHatWnp0lbZr7ddDkt0BoMCYBz/YyBY4f9Ey4pYwND
	 RPDROffuD0LJeVvZx7Y0KZLhVTtcRKT2h6atSRJQaWI8+xf9PoOkwgbgEKfzV6z5rZ
	 p5hXXqaEhPEJIwQM1zBEADq/vFCQ9ACVMl35m2xwK1At1HPKr+e9SVK7UFkuguR/Vu
	 1JxqXZDAHoKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80D0BC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169926289647.2178.10927359778420457891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa32133a7c96b1d90bb62a3c102f1b6a6cb42ee9bd0ef674e46d6e180673cda
Date: Mon, 06 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699262896
