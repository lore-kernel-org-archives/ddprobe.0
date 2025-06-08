Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFC12A1BA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749407995; cv=none; b=uzoBsk6KaRPuHkPTh+TjO8GGHkiOW9wBaBF7opbmzVpauTYlp1BZVDCip77+jC+MfhNcTdDmrB9oXvFBz0DcJaBkmQljEVz3GOUDJWnbs7QbPjy57DvAXvAlqACqW1NRK5u5LC3es4ndN4NMHTqIC4zhv711UsPGF7sPBYMvNv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749407995; c=relaxed/simple;
	bh=MrJ6HLxoS+5jkNwVZJbqqW3gJxEaXe6qVlSGu2dTJew=;
	h=To:Subject:From:Message-Id:Date; b=ZMM7QE4YaXK+X3MW2/jXg/Ul9qGZ49OQNp5rUd+A+CpeA2eLX+QceIk7gaHPLkRLUH1b9OjVjpbMjXyFIzsnwQholZbDwMq5qKV40MQ9LidDvVv/Ny3dNJYrJeaRZVGnnEO6S8Z66fxGqJJbA8QDczh12pE2jr7QgqaQy3hLELA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYaSQl1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYaSQl1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A130DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749407993;
	bh=MrJ6HLxoS+5jkNwVZJbqqW3gJxEaXe6qVlSGu2dTJew=;
	h=To:Subject:From:Date:From;
	b=hYaSQl1MCnmQ2UcLJFfwTIccSSLOQM7MjnLi0NIUPEFNiUrDY441kDikW7+lAbvsa
	 StSS/e7vNdLLK4SJTNExyY8PiPlY9rSVK1Gf8FatnTgEOQgc4NLpizks52sK8MuGC5
	 P4l6g11KJn5c3YNnPcMhDLyfGKWwNbbXhQRcMzVOuMXY45UH5ddHxlJ9gDMXuU6vPE
	 BD0CwKWUYdWl0fIB+JTxGfFoCo111okYA4z3v2+NjdbFWyndOLW2sBDbp2mgJblxXf
	 xL7dr+iovNUpZC4mb1+NzNNr16EiydggU6k8UNZGFYmgJk19D+uT1+BxxtVJPvZ+m4
	 81jcELEA41pvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E58EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940799357.2101.16837660717735682852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48f572328944c4991d7125b562d2910dee61a358fbe0e91386addd03ae8539a
Date: Sun, 08 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749407993
