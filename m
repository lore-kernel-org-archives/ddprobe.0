Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EFC14AD24
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727308554; cv=none; b=CQhm05eC+bzuq9DIkmaAHHV8M2jBPUuNq1Cm6f+A5bDXGvpmI4e106Sf1bz76EUNeGU/9wWQryHiwJv1wfWGyqhdjwXN63urm1L7Qz7xSMs1EoxpBDozw/WUWIgHtN6s2AHQJF4t7JuDBdwUnNSAx0l6G6o1dsj18oTW1ncTF8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727308554; c=relaxed/simple;
	bh=TZlf06Z3V6vDFaSFLKxtsDxhqB+/sfCJu3GsHFHl2TA=;
	h=To:Subject:From:Message-Id:Date; b=q+CagmrQDufPCYVGQZc4dSx26dD7RlPo3anI1U8OxThSBJZtG1PcDWd0gOeVCb3fWJs6g1euwSkkvEXRSe8DjEQdJJ23fYB5KDG8G5jy2Qu2tfFe8nniVshTHDAQhidZF2F4IYkwaoD4pZJxscr6T4eJgM0M+53X7ZZcJ+/9vYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI+ZGIn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI+ZGIn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F96C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727308553;
	bh=TZlf06Z3V6vDFaSFLKxtsDxhqB+/sfCJu3GsHFHl2TA=;
	h=To:Subject:From:Date:From;
	b=hI+ZGIn0yTj/RfT4LBEoK3ICo9iHqQrXpa6sj+T9NymILa5jZg866VWuIezqF98Xz
	 jVvfGEOcalLqoFl0/hnxousKm8X2AO6f+3agQo/1Nbj63apjYbO+iDSnpVMxmYqKDs
	 2hdt4gRwLZBtt+nyTDkdrZp9fHcdH/sexYjaqKGPqlW/hU9yw5AlHvWmKYKBh57UCI
	 z1UjLqLt/u/r6vtWrgXL4WCWTSGZ5aKJKvE5JHvENo7XxT9fVDYwvqmqxlO4vqazEh
	 hvP1XAakN+Zsuj/Yznu5TP4oqgOJv/Gj7KibeQpmuhgv3N2QHHRg9i3A0HKWricn6N
	 pFUADQhN+TxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DEFCCFA0A
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730855359.25463.1213316211222805977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42c2781727df3208c893d99f1399e27546061aa8339d97715c138f6c7092cfd
Date: Wed, 25 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727308553
