Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DF91EB5F8
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770596634; cv=none; b=ol+WZvbybhwIxhVVG3cu1uTeEA4clqezNx7jPENRqd9Cm4zRLMWefxHZBxxYsq05v7KGPxLrsPBcSDWehhofXihWLWoHyEUYz6d9D6U2Q2Coom1/fVRjCvoZFNAfCDUCHvZGRubjRbBNQX5eMfSlPm3Zg5uSOcTENEa6v43w3aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770596634; c=relaxed/simple;
	bh=3/j4sCF725PNgnG6WnpBB+J3X+XtqqgMtUag5EZZnBg=;
	h=To:Subject:From:Message-Id:Date; b=LUi80TyYKC4D/vbyyWMyqk+AB4Nm/k2WAWKSc/O/e8yLOSb5wq2xxoRxXv4KlEF/fk14L3/IXgN4hJ5kNwuVZ1iNiYmUW8OvMF3gUippV5IPdDcOEaBXTrZCb2AdvcK0dJ7S7zQ3OfNJ2osO5JYX12uvvaCJHzW6hptSPqPYwZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeVd64JN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeVd64JN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F5C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770596633;
	bh=3/j4sCF725PNgnG6WnpBB+J3X+XtqqgMtUag5EZZnBg=;
	h=To:Subject:From:Date:From;
	b=IeVd64JNc86SP701jIkxfughhDpkrQiw7o7vrP9nD76TUJ6ZNfbcFX3Nj+J+fiXR5
	 RoW9wD9rUPHGxs57/eH1xTmXxfzF/A6gBhcIXtAsE8pR7A95ZjC+YDd24Gvr6r5OpU
	 P1NH8VQBH26WrhBZr9DybTt4RdVI40ML4hoYhklEKoKMQokuE2BaVDfNC7Zv5X7gXt
	 AVYqxfnUlZg4p8hITTeR/p+BzwMS4jC0lJDdBQLOqig+p8677AMY/WK78funte/d9+
	 5meQYXxUwrTodE6KPfKjey24PFrx3JnXvuWEzVzmEmcTqoTE7Q2VWR7HEkHCkAYQcs
	 hrSB2p2unsvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F0BEF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059663359.18999.9311532929640136614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d910bc2a053848250db9414b7158e21eee783b0143eed460bc5091e3e713f725
Date: Mon, 09 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770596633
