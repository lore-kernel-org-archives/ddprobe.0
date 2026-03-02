Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA962E2663
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772433294; cv=none; b=tselwGsq4zgIthzwgWzHGey2WJoqpdKHv9WkzcU13OfUOYLYUZT9Nm2566X5RAycU6cZ+LXXZoVWFXw09l3rHestrEX1MOhHUxFAXIqiWBf9K7x3nP4IiTRzb7Z6a7VkHi9fE2HU3nyXagc7RPsuTYg70Lz6D4C4RYI7ZWI6RV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772433294; c=relaxed/simple;
	bh=vH3m1RnLJjPF1Ux9WEGboZqVZg0zqk4zA9sAAMxYo9w=;
	h=To:Subject:From:Message-Id:Date; b=qj0Ik2ZPYfhtFHprT4918gPSHaXijKz07qr8Z32G7geanG/HY4xM1Vf8H07snPmQFsbhvI1RmtenCuQJaYDf68RJYVdBa9xESNDwespRhJbZoTj0L8ipL1Q0ftEhJgAuKXUG4qj8gm6iDaxJlk3LR7rqXks5luQDE/zCG2wjvVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6KYAuE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6KYAuE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B306FC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772433293;
	bh=vH3m1RnLJjPF1Ux9WEGboZqVZg0zqk4zA9sAAMxYo9w=;
	h=To:Subject:From:Date:From;
	b=q6KYAuE+Ghkt2j2UkmFPSfhzFpoMW17a1hkKjkg+lUqWH7sQMtgMNfvX8LrAk1QFA
	 jd2gFAbx8Hvcq1oKOqNPMVfKYbKQimHyJrQcVqBNTuralvhZh4XgzFuD37GOQESv3J
	 ajnbFyIhRqpiTvevKtRfXtWLkKJkemAPP8MPoCHtn41nSHsnecaFKfl/2L1TALZ8NX
	 kMIgoJGKOopXXpIXq0Fe+lSeXySUUXd4h7M3p4LT+17NX5t/IyDwruxwrsGFajN3ui
	 KHGPcn8iT+LsFI2rZRiCUCISKzSyVFspRJ3/lXPxxSgh7CoBNK4iPB2OsV0SCBcuvF
	 WOBqbTkWYPgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988D7D58E5F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243329361.5291.14415305564432897767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb2631d903617a0bbeae6a6eedc84bb0f18c7b8e9605c25d12d30dab87fa8f8
Date: Mon, 02 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772433293
