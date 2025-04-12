Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399125103F
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744434594; cv=none; b=YGNN0tT/wx6ialmr48nrJ5VcYlQ/MS++dgwKy58flCgfI62vt36n1+2/JEYq5ot4wxmFRD+I0lXkQyAdn5wl6CqxUfbOXTVi2VBN0D+rnpxRYTcY+KvnEwMTBWV0u6nSsUTKUJFb0Ug5ETQZ4ueTMuK67ODYcVSJ0UMMcGMjhro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744434594; c=relaxed/simple;
	bh=reYCBhmQBtXBShiwlLwetQABSe0TL04w6fo0jL4E2Ps=;
	h=To:Subject:From:Message-Id:Date; b=OSF+wFJShkuZa/hEpDc9GdSAaIAqWtyh17vlQD1JOFQv5Zv43WHGdvmrCJLUYn8zCHIXt/wj9gq9GcbkTZStqEa3U7Wnk6RmlTixnesrNGcsoE0S/0Vr3LoYvXDdzEE6QnzGup6Vu32MPQC++xCxvcynbGf94YBUiYejtJr4CCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS0FRQdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS0FRQdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA42BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744434593;
	bh=reYCBhmQBtXBShiwlLwetQABSe0TL04w6fo0jL4E2Ps=;
	h=To:Subject:From:Date:From;
	b=TS0FRQduflLKNWKN7ods/SvxhgeXYPR6mLBWablv4b9bFFYI5EmSzwhpBkXVfdc11
	 l+CzZB9ICKBfvsWwAFMOs1lInvpWATMXtK6xzlMjP2CHHF1Ea2S7mVjNWHp/HATSt2
	 T7w+IcF9OfklKjUe2K0NlXLFwcS5L9NE0CJNIZZwn1leTTqZu829QqUgtsXk9fn61c
	 udxs/5itSsjs/7cS7kX1kXS3Kn7+DkGEIO/sKxJFmccVPT9MDTB7x51nPJl7TrAsM1
	 QmdEkZ9NZvq3RMibTtXw8D05ChuhHfvIOSLj1Gy09nSMaXMLmL5+TS6fCoTh9rfQ5p
	 JsEb3SaG2CYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B2DC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443459358.17925.9906353413940237102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d682c8fecbd0e2bb60619ccefba0af3154095a8d5f58ce492050a7be623dec35
Date: Sat, 12 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744434593
