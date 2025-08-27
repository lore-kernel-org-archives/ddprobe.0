Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A5834DCE0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756293594; cv=none; b=uxFy5tK//b3G5TjjLmAsj7mOAXty/ds5PVeYpDtSEd7j4L64IJwEr2Ft8MnTlTYJOGtzC1pxkJidmaSMlng4WkL1pFL9dKj0eKymLlo0Ez6+eUmehJc30owwaK+edJ2KddoN2FQgiAoVxup+z3XSC2V+etSP4HPl5pnxtC5FI7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756293594; c=relaxed/simple;
	bh=4RE6I/1O8utgT83AeZ5e+WEYHDQb9KH2LsWpX8XF1j8=;
	h=To:Subject:From:Message-Id:Date; b=jA1pd3KxlBICxh8FfMwVm5oa7kqbk3/q8uRo1/Wag8zM0DyHGFfGoh2fbO3cJAYbnaXzsB+CQ5dHlmwm0r129MP0SUTlD+iBXgbTbRQZRULNKZQbgLlPrFx9nSad5931iHoFpHO5YZrKo22LN+AaR1U4VR6vi1wZfJW+VJYadHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/tKZMg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/tKZMg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9193C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756293593;
	bh=4RE6I/1O8utgT83AeZ5e+WEYHDQb9KH2LsWpX8XF1j8=;
	h=To:Subject:From:Date:From;
	b=E/tKZMg0J2PzUC9JYQzlPVgD8e5+sz9uQ0QTrf81KeaTntuAyEHX/rTYIxSzb2Q/O
	 eAnr46ObRJYycgk0jjLmm/gQ+F/ObATCRNgQqPmulARngznYfSbYliaq6Dg05OmYE0
	 DzNeVKXGVhOflgFrudLuq1gPzrsjmTOFGKpHHf3gYaZxMIHjMDaWxRrCQsIxBORIQj
	 9I5m8pxCQKWRuiPrCKqubk2Q3yhlboqtHKt8L1jvgR5ewt0WkA/2xN2bg7PZxFpMHv
	 5jAuNbnJoQToHD9ep6RxJQYE/MDoT6J8Lei9pO0YVk/o8cK2teNJMTZVOIj8nIB5gR
	 PhzFHxjoWP2lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A504CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629359362.5514.3721739650235441611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227da0447ba2e4dd471f29e568f4cc5d83ccc88688c342b436012d27cd1bbe54
Date: Wed, 27 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756293593
