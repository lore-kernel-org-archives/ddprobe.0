Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9765282F1F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774019694; cv=none; b=cYYD4JdpjrHedlrM10sCEA445CRaCdaN3MOD246wdCUuzXgUZ3zbs2rFDssL0WfDewEXvF/QnXqgIlIqoLQnNULYw95JxUANDTZRmg9bM46mADbqqNQqzYpYwjIAKc20Ec4MfKiIwWQawfWsHZDSbeGlmPdfsyS+PxjnAoqMld8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774019694; c=relaxed/simple;
	bh=Iipc2kGhWLI/pthua7XwpDZagg/bRCjejVkDl24ifUE=;
	h=To:Subject:From:Message-Id:Date; b=Mt+rf4Cinb2T1V7qlhS46vvSRTZcDYChii7xZ06IilxIQVK8n4s1OZ6jYBsnbT+DHPsGxOXFgFdppd38RyVPG2phn8dhIxnmPScEISCB22Gxx3KZtzxy1yGFQGgeZhIiKfn2VChW/+RkrjvHRqwJ8szYo2AJ58j0DL15XxKyHV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pX26YNuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pX26YNuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE47C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774019693;
	bh=Iipc2kGhWLI/pthua7XwpDZagg/bRCjejVkDl24ifUE=;
	h=To:Subject:From:Date:From;
	b=pX26YNuQae2xXi5Sa8MiCcU7yFHQuDjAXJ9lxMpQLKogoHLl4ATySSEsBkNIs++R/
	 gE/YTUO/mCGcBQh/UoZPVeJR7W1RFKK60Ip62VN+LVexdBU5g+GOHgxWFAeNHrY3ci
	 +xM4fJMTBU24h13ywPQ1YwDL4/g9nTwv6fQ6JOf1nTZ8KFxJ6KFwaPGlrTr3sHhxAI
	 YAJo9ZI2n15qfuORh3GRHoUSxSGOlvHz1MDoZlLUDFJbaiLCji++klZLyTefISgcqh
	 zCI5BFS+CkXFKiTGPA6w1DGZ5rGs8v0rCNhBPvy/csDCmyLWAg7ox73whNOOTsN9Cc
	 xFpOu1dHfNw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5061098796
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401969357.29930.9749736024095492831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5726786719bb24fdad6d47a235cbfa4284d9a0d4ebfe84fa921c520b25e499
Date: Fri, 20 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774019693
