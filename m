Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27150279903
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748437794; cv=none; b=BPd3BpDZk4aJhd7bHJ7VEd8uKoIolW81d9/L8hSojDj8nCUhMTTREk/X/jY/sYD8EDwV+lL//0aSsbOKZvFKc2ebVLcaGmrWZRYEd1HXZ4mM5dQS3t5CwGvIT7oHdlUa2YGmvZHj695vnIeypcVfK093/FiijvEPdvYOPZARrDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748437794; c=relaxed/simple;
	bh=2QehLg7ggRC6zcig3fhrqq+EP+/P3dnIyZ6ghqm/Mzk=;
	h=To:Subject:From:Message-Id:Date; b=GVVTme4sWoU6nJQQM1joBZk1v6Iv3I9v3VUSkEZ9FUnysx2mhDV206D6WUFGrJMjLgdxILm1rNIJpTh/EOgU0br7CaFcU0j9cgZ9eq0JgPKNY5oSfUWhK61ej/Aklz2GuIX21mn4X8QkXRzkfU0L85cL5CVk5q6Cg/H8E0ZqSRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uq2j6/qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uq2j6/qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF5BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748437793;
	bh=2QehLg7ggRC6zcig3fhrqq+EP+/P3dnIyZ6ghqm/Mzk=;
	h=To:Subject:From:Date:From;
	b=uq2j6/qi5Zy9MgrnzZoyhok/KtJrr4n0+r31eUF3oYmg5boIDYwr2mGXFYexT0EZM
	 3dwo0KE36urS8QWPJsBV073MhrzrEucr2Mo+cIT3nvKSU9zLrv8Fg5sxCICmeRcBfP
	 jqq4ZZxY4K6ok2Z+S3BiBAqWIa6zSuYYlddZ6WtWB3X1TepSa9ADmHyuf4TkfJvU3R
	 L59DZ16XiwgjfL4zRny2hvW1hIr3Wr1lBYf52cSKlzL3U6Z7qJN65lDCFBYsTKBwZ6
	 aXKCel7zrB8z7Q+c6EoEOXatn7ud+/Cw4HIhJci4012hd9AoycO/WsFGazyLG8PV6p
	 DtTYPsQ+JVfUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F106C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843779357.23693.9436709148607431954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd053ee601358812e144bf5cb9806819793d0fc80750c026e99923252bbd3ecf
Date: Wed, 28 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748437793
