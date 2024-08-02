Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC5D1537A0
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722619554; cv=none; b=cJVEtrb9PNC/grtnqMqRT4qkZM4/82pti8tlIhH83ozdVBEZg9BduHnghcEI2B/rbUEj4IBb9n5AqNpLG/Eg8NvIOABEUtMYCcs0eBAxE22wNUyjZvldx8tnW4vFX47rIZUlCzCMSlZk5TCG5WlFIf0bToWN5bEzmMsS8Yk+jZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722619554; c=relaxed/simple;
	bh=CgDK7O/XS5GDsluLzcuiw8HiP5tCRr4e7JmEqYPUgHU=;
	h=To:Subject:From:Message-Id:Date; b=Jx1MccPrSIx6bHAlgiAwVwtTuwdVzzrI9J3EHjf1+I9NnQXjZ2N2mZy6VTER9wuGKmcPacGbJd2368mUIy9KcfpqzejPuTMIERgAf3LC/RxBhg7NdbOC/KDBt9bzIjmftmFdkfmwiGZT3pdd3onzvzBzT6X19UkFV0z1EYaO/wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1du2KeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1du2KeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B92C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722619553;
	bh=CgDK7O/XS5GDsluLzcuiw8HiP5tCRr4e7JmEqYPUgHU=;
	h=To:Subject:From:Date:From;
	b=L1du2KeHJ9VQgjYh5JoRc6t+vdUByCqqZ9ikAGFMegGItJYG0W/SpFIAuWg8EPilU
	 Qi15FBy21DMKM8ycGMjEL0KA4np/emCUCr8lgTC0OHB7IN6cdN5UtBjIjsmQnZsxr0
	 6ITyvQl+38Uosr92HgOvDt7i/+2NKh0c9VRAIY8LeoB+Jbk9yOhq85R9aszRvlAJSU
	 zhsPZ1ulfkrqj8Cd0C+CpEgpgGKze/QijVwdk6YY5jqa9wGsjquxrNAhDBjH9Nk5mH
	 Yjzee4ZkM8wDyiPfn8EUAuR7prrkEPKa/708KfiVUwmXWqzH7KISq2/+XMl8v7kiUd
	 YOC7P5WAMCkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C202C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261955362.1791.1449109840615739298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2054f7112b00fb0829cc3accf541d6464f80073a8830339936865a16ec2e79f
Date: Fri, 02 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722619553
