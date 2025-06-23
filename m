Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FFB224B07
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750715993; cv=none; b=bjUezgkqc89s8i1iQqFeVLbuLJTz5rJrONUu9GccS9E9VAWMVQe7HTukJhAj1eMuC5V/YY0fqCUpQw8XSDVUeduYsk/cxDhhtjeVi1Hqk/MqpQN4SRypR3fJzmgB+ne7IA212PdFLU50QfG3oKJClqRDRAWDtlTNLs4fJ0DY13s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750715993; c=relaxed/simple;
	bh=akYSZ0kkNC2hXAXIUfuWBGBXXD652SXiJvZI1rio5BM=;
	h=To:Subject:From:Message-Id:Date; b=bt9BWUCS5qiez0176GKnqgY/8cWYZk+HVS1C2mzNPV+YYknYIwrfeACvbJgUvv7b+nDuqbv5ilJ0M33iuQlMiAIp1i/JVoGCoihBQ2YGytRABGuceVChMiW4yx8l7eDjuDqCrCJ79GUeENyWiCz83+hqw6uAhtbMtmVrMDlfU1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPDKYYWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPDKYYWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42FC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750715993;
	bh=akYSZ0kkNC2hXAXIUfuWBGBXXD652SXiJvZI1rio5BM=;
	h=To:Subject:From:Date:From;
	b=VPDKYYWKNxd9tfiuHME5uuX8WxSd/Kx9EctfAInP9SobXZptbg8U2I015JYBeTUFc
	 hIW97TeM90VW0Lp97ZMKaK+rOKvYl835JGKaL/+J3zUrHZl/tptoA1j3JmR28cLgkZ
	 hUNTiOMbtwtE+sl9TbCp15+IOh5CtvsEQvk/+BCO6RSplzCU0BADa+gqUkcuiVJxn5
	 9QTWx+xhgWkDe2Ocp4OzLtOWYhxrackgIpCZ7QqejGIijDN43+c4Yqp46Nf0yCtBNv
	 itkbTgqcaYQmRl84g3uE9ECKYjApb7VLl5R9AzArHXhc2Y1KGAwD9YCQM4jtVyoGwB
	 qv6Ze/X4eYJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E79BC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071599357.32725.12309062391342992731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c162c9d15885abe47966255dcde06f6ae22b81c56aed65ce0326a828071db49
Date: Mon, 23 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750715993
