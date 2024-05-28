Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DD910A3E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716926663; cv=none; b=FLU5RAOemfmTYteiHVoKNhOGF9EeB1VbeXnH6U9pV+wzxXesJ6pAQhRoiXwyxgOBElr/438SCOldXVwWe0eJrUB9ltYkhUZ9MvWCGmVoetZQIkULrWMj6PU6Cy0T8nXyEd5uX3xKQ30hLkFD/4GzTZlSgfIG50bZJ0gZ7reCoOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716926663; c=relaxed/simple;
	bh=HH4eLkpi4chTPBQlvvXL3x85eKmfu36TpLDlsOCeU/Y=;
	h=To:Subject:From:Message-Id:Date; b=mtE9uLjQWhwJ7u4wXws9YJ8kBxu2YpJeLRp+rgdN9ceiATBuW3V8sBc7I5bO61XNypTUHcH+luhaGFiwcsDLF/3l7sGjTZtrWIc+hID3rSRiKpjvj9n9F9zf7HLXY6kBMtuc1buwHVl7VcrB26dehXVYDzp9+Z0s3WRReQ252BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKTjyTd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKTjyTd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F15CFC32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716926663;
	bh=HH4eLkpi4chTPBQlvvXL3x85eKmfu36TpLDlsOCeU/Y=;
	h=To:Subject:From:Date:From;
	b=dKTjyTd0S0BTCbD3eiL7HSCwhgtcHKNsouniG6CuXK43mMDnEKgmjZenE8rYLRpNP
	 TIZD7imA/NG8UeXx3y9+4D9uU8g8HBSE4QcGP4xCjDyxR4IXWHsH4M7v7rkRQSNDZI
	 j9Qc+rJkVzCHuhbYRQlGf8otIIfjMnxbXu4oHhlS44/HpNXOMNMKUqNhyVhDkBCDll
	 K1s41lvPtrFcQUslNb/LohNKcTRUyIRPsF+qaMFF9goUzSXvYMkr95xkld9kWT3oLq
	 p4rQrfDdKDQA6XOscm/KQH6cWwUkQIysUhhSIwLL/VHZr97PJ64n2+jokJHu0ZxmeQ
	 o8LBRFR1L9s8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D56FFC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692666282.3443.3278717852710054330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebee520fcd34ad5936cd06f6330fdcd50bb47124ac16121c7cb87145596c95f
Date: Tue, 28 May 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716926662
