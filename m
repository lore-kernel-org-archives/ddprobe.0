Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF05208D0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778317054; cv=none; b=i0ERWZLUOuiICrNNDe9P+ZoV8MzyDKvUcS98Q9wG4GzdJL217rtzrg8gXQ9Bw5LMds04xAnVz1he6cH4uQswvyZVHIIBdKqvri8rTP9ZEv/Jd2fcaeuHUwIT4b122Wn+sfgfPls4nYbXV3IKTlS4HaLzaK7V4Y0AuwRz+wAhv1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778317054; c=relaxed/simple;
	bh=UGs7EZ+J0PPiq76qd7eYJV/2ctyOUiIGN5Q9Vvl+zts=;
	h=To:Subject:From:Message-Id:Date; b=m6Uz0oFy8f3eUjPkoJWiPTKcwpsUalsJQtbzlzMFVS5b/morpQG+bpUOjZRqK75thQybD6+XdKHWKND+/Qzykl1JKZQAPilLeirR7FTnAK6tw/TA7qDF+kUw2gjsSDVAhkrYjJKVHdJSRoM/zm3QlFRzyUr6SWvztg5U2KtgNgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLoDKDZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLoDKDZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2CEA6C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778317054;
	bh=UGs7EZ+J0PPiq76qd7eYJV/2ctyOUiIGN5Q9Vvl+zts=;
	h=To:Subject:From:Date:From;
	b=WLoDKDZHij5UKeddt4sFsqFfnW5Uz15y0p+bHxgD39Ski2oMbHd31aFLRh/Wjfbok
	 aMmnEWeTM0+Gn2iRhwhrOdeuMGMu6gFTINNX2vqksagmLqacl/d4DRYIjha7eLzxe0
	 +KL6SQCGrffKug9PyI/9Xlua2E16xmX5EaOu5VpiPc5VhmZXzh4KaMNdmzTItQAK5K
	 3j9bEaYeHkyy37SZoLQVPlaL/L1CWFgCIBDldMJ+Qf4KS44jaaGgGUSPvpgB/op326
	 IStdsKP7xoqJN0nrsVQzb0CwTqJg/IHvt67e0rBrkqrT6ScY6U43WqQ54Z5f5TcwXC
	 JLZklRxbK/xLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8833CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831705383.22058.9243445388640396179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8f9e1fccefe4574f477b6b6ffe47cc63e703d93f44cfc758f873086b4e9bfe
Date: Sat, 09 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778317053
