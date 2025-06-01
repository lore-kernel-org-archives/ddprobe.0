Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2A31E4A4
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748789994; cv=none; b=GQaKzqUfd8kmpn2eF2PdF89h7MuvVmEzmXN3EgDGfVhLp15Z7l0i7USzHxNEikLMy12im/qTkkyOnq2v8j8lctu7ZLHwSN4dZ6ArsYgJkWeHf1PT4F2dh4Ejgt5exwUVaVe9xSLc/NoABRaH4hNAjPOp8VyV/aou4xfqNqDTKnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748789994; c=relaxed/simple;
	bh=CoXJ7aAVoex4dy0Ks6jZKAEFRwFd0DInqVtlfa8g8AQ=;
	h=To:Subject:From:Message-Id:Date; b=Vwf2Rr9+nqe++2iyelSYxZMjwDDN7iMhdrvg4+UqpQXrfhSf/5Rjc8vurDKpCaunOlinO3KMOFPHlqqYQYk4mSwcbu9ANDaC6W7xNXzMYNiVjI5QeA3rR0r19UYTayVI9wTaaZeDV3oybUcqryc3DPjchlAcT7/8MEnn4q3aUjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUuD9UZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUuD9UZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748789993;
	bh=CoXJ7aAVoex4dy0Ks6jZKAEFRwFd0DInqVtlfa8g8AQ=;
	h=To:Subject:From:Date:From;
	b=IUuD9UZvcxwy/PyjNfo59RT4hpQRjoPUrYO17wZhHjCuCCpPTWCv0sDVDxR0tc2p+
	 r1YqPgksTxT2aVzNwasLvMZidwJzkKDRHIOYgAQHUmTzf//TGWa89JtZBvynDZNlp5
	 VNSxLTjiKRyRFtQRrUA152wCyZe7gZxi86CtP/v9oNrrl+ldOK5VGZwxSfCAflE6h5
	 Uo3NFdwdJRjfR/2+GhfQEQXMlmguZCvXNFkv1l4lu7vBKhXjXX70jfYEKw2i8be1vv
	 pFrwLb8TCiXDo+iqhVX/HZpPyRV3rTABymQwNYsrUtZMuRIhvDNrPH7ZBXmd3aZOZi
	 ulsvl5JQKqD6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E0C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878999357.6416.1873080060449786853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c350d2c4ce36ac31cf453dc4c4c59e34bc709a196bf6b4eec514a607d8646bfe
Date: Sun, 01 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748789993
