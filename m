Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7C0204F9C
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749462594; cv=none; b=n8ZoT0Gq6zBi2ZVAd6CouuWm4LDq8RSCDG+RGENr4cORcNJ7Cej0sYqR4KZ/rCeB0MEsL8RO83fwTAhCjaU8m/jsvV6tYK5Fg9EmkJ54unxSsbltlGiK/lYX4JsdJPnjr1/RQjvU+NFhMqRgZfZATBHjsVv80k/wsyV/+h8oQnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749462594; c=relaxed/simple;
	bh=5JcGNOwexVikchZQPnBfFJ7g7ackXVyKD38Q+3PuLBk=;
	h=To:Subject:From:Message-Id:Date; b=CeB5zWX64MjrIRak6Hivig3ablbLtoBAi+j5WfudlMkHyN4Ub5IOCxQ6GdukWpFf55jSCxkaAahuOTUOxYmFPMjBW6pGeFv/VFdyGd0ex8e5SHnFDQfHovQkmtHR6tyJvx8R/+scghT+yxO8FbzouB68+qfKzYGm3/EuSoHYzDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7bFJGAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7bFJGAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749462593;
	bh=5JcGNOwexVikchZQPnBfFJ7g7ackXVyKD38Q+3PuLBk=;
	h=To:Subject:From:Date:From;
	b=r7bFJGAYvd8bMqjljhoVsE+1Db/b/alSjYWyc9vz3s03Mi5ocLZYgynSSlNaBRIst
	 DIjgX/PeBZ6YG7DYNSwglNDUPPmBodBj5WeTvcI3laPMfaX1ralHJJz7/ZKbnHi4rN
	 BqgOmORnD+x7qKw1Av3WqML13Ygr41SJX0QbRc97q4tMhUIC4Tlnd+mF3jKWugb8s0
	 +8U5LCK3W1GFe9B14WpRmB6BvU6bdvgvDEe1woQGec5+V9XQCqOwh1p8ngbijhJ32K
	 7Gnytwrry8TBUFnZBQIBzaxC+U4qk9nibGAcTKJTOG9XYcEBOXKVWrSc5vw8IV2KkG
	 Fi5gDRAtKn/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83CC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946259357.32075.17369020347619038726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbcfb5eaeeeb32b196807c2702e267d6941118f7251b4c6dd8a2b24060bdb6f
Date: Mon, 09 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749462593
