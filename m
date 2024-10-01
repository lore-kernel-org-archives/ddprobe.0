Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C07E1C7B69
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727798754; cv=none; b=EjYL95Wq6NeBqWkPuLHRbaBU7sgvt57KMrVkc7NZuReCCEezawPLBQZipy0QvfK60jk+5irH46mSEAZfGCSY9WVBseVu6fqYyj+nfsQzitLFY6AVkjwQmil/ulZRfy6qrZKv8T3+wxoEqDoajWQkrLUEK3tLLPOI56JooQvApuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727798754; c=relaxed/simple;
	bh=wRWBVGklwHmAIyewERSn1p00bACtPCnMryz5qZSxWXo=;
	h=To:Subject:From:Message-Id:Date; b=ECl/JGG2NehtEfTHTAce2Bvv47pojwP5MWCgra06zIb2oht5lRXDp2xMteNHHjlPHeaT1zby6YUOcxMzT+RzkfsYeJ+ltZjyf2VZZWKzPjYgxbNieLJDGPR8Ofl7rKOqTuKpvF3kPUpHROcbxhTMu1g4eiU/b9ip7nv8ANqdEK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUiQnc8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUiQnc8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF7AC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727798753;
	bh=wRWBVGklwHmAIyewERSn1p00bACtPCnMryz5qZSxWXo=;
	h=To:Subject:From:Date:From;
	b=VUiQnc8cF7jVyRxTg61bxJKKxa/fnwAHJPLy8YVNANi1YUwLozKhg/DyhpLslgQwG
	 kiUXOxFw54HTff2mnvsr3xsdWmHUIkU8oeqBzjCpKf9qOoRomADf4OP2cW4V5RZ2QJ
	 CXQo44LzFKwUlCE6jf2FrI+G3YVYzh85Vj+C7VJVzIOZBQF6whsIzH6D6rohGLLemw
	 OKF5xJEt2/DyuFlWUct/nR24owpw8DYZl9tWxpd2w/96rG60FvMtWfOe74CQZAoPZi
	 5KT8FlaqscI4z42ahPzfzqN6P0dT4Vt7J2lCx9bjjRr97as3wiP460Cv3R4cNsFKGO
	 yAbWyFv+kVM/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EA6CEACE0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779875365.11862.5540348307138668099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ddc43251804f8c54db01c9182a77de8166259bddefeab18daca207ac379212
Date: Tue, 01 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727798753
