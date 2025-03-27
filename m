Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491E618C345
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743119996; cv=none; b=t/uNIZFhRP0MpwBD1ZOJJD8X9qgcwpDvhx45aIKNjfq9Pk9GIugiSSyZZUZOXUxodbejKe1M5BaRuKtZ9vPDzX/WDhVUTx/EsdBk34i2W+tkcWVvXqh0Y/Xqp8spobQ9qgL47pOCVT9n6Onrw9Xk6TU/ZysqAceaPPJgz0+HCFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743119996; c=relaxed/simple;
	bh=MZDHZaAnIa4pzjKFMa11KtmUb15zjd95iIL8haF1U9s=;
	h=To:Subject:From:Message-Id:Date; b=shLfqEY5Ox8GugF1ThBJPgVc/BHC4leluYpKRFYoLX0yhCms596txsHmna+Hvuehm6NUp1nEYoagapQh9WEEhY3Pi5vJOBeolgwSlks/kjJ7XDfz4eyWdHv/8DrVj0v9+rUQp1pWOhnjY8UgqNDu0MMjNye3wh1IoZIgjSNON0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj7B7gAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj7B7gAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70CDC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743119993;
	bh=MZDHZaAnIa4pzjKFMa11KtmUb15zjd95iIL8haF1U9s=;
	h=To:Subject:From:Date:From;
	b=Rj7B7gAYyLObqPvOyTWEbili76VxfoRwF4ZypGV1iYKhDIdQAgMX8KJEdibdJSIbG
	 2IbY6Jz6+vDi4/XTakWpQ77tHLUi7OfvLkmGpk5EDuaoztAImNrQbVXicfDhK6WqZk
	 hUpaRHnKnfkbyZVla+S8wTF5rvPr6kBc0vBWk9TppbST6u/pLU5CuetyVFjQ0cH/Ft
	 dsm1TpaAxtNeTlGz5tzZH7oLVOthsUEerbDYgF/4Y40TiWduDtmcs5vtzsUbDwvBrD
	 I6dSqyCNlsWuUB1JqG/FCtZqEKIy0OG3STLKx9h8mJpxCG5dtJnihhtRYFGAoimr8I
	 eH7aot07NzrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B95DC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311999361.28505.13537467125846491614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6102beb564dcbb811ad000191289852b396d46e4a106f0566518c7f8bdad1d21
Date: Thu, 27 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743119993
