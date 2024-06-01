Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45997154BEE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717268123; cv=none; b=mLjthOms4P+HwB5FT1sCPaeE89Th4Skl4yXuytg1uBUS5lAkMc4/Uo2Z+GaLflPjalISVYn8zwpyGUu3d8uW/dhJFszxoxFhOGph/LJCRK0xscbM7k/HmOn4OXOFcPqIg/jE+6mD0g4GAsdcoJ9WebwfIwsCYqJ/0Vgc6TQpyOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717268123; c=relaxed/simple;
	bh=tPXUxeN6VvQdCT+xNj36Ik+Frj7MFByv+YKxWUWJ/EQ=;
	h=To:Subject:From:Message-Id:Date; b=nyp+EI9dcaRLmBxZw1IY66Fn4Vd/Aun7uYuBc+e/VrzKpR8n0KD8DXqhAt6TiX2m2uvgZT7xP/aNHFh9WJ1OdelSxYXAT19uetStszW+R1HkO82MykUKD7nEZ4nji14pTvcKsfYM/l4Jy9hS5RzJSJFrg1Pui++mMdXARUaEo+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFbNkFap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFbNkFap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD7EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717268122;
	bh=tPXUxeN6VvQdCT+xNj36Ik+Frj7MFByv+YKxWUWJ/EQ=;
	h=To:Subject:From:Date:From;
	b=qFbNkFapH1jc/bad7FZ34YhSEPA1xWz4h34eqeLAsRNrlD6Ei8Z0qSMinvJcctNIW
	 KYZM5r13y48BaW2cPOzsvgoff8Psm9ZOm7GaCCOcLWPZHTRDw6yMVfLkJECjHanx7l
	 gW+mkqAsUWlIaNftS1xNfLn+fIYkObCjVbinw8W89SvnjcNq9g27pQ5BmqXT+BNgrR
	 z8GUG+iqAyLitGVoIEe8x1ekGpbVrsQMq4NsJACSB3pkwgb/wdpl9e9Tho2lsgEq7b
	 VdJxsEvzpD0nOb/oKeQRCr+Yg9eLIY8YqfKw3/+dQ+BvowbzeC9t1IPSg2XkKIwAmA
	 ziKLPtq+1TmoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D8EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726812277.15326.12226218489283883211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771152abe4b5a515398e50ee930dfd8e7eb685291ae7a4a4aa4c540282652031
Date: Sat, 01 Jun 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717268122
