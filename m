Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B5461FC5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720952423; cv=none; b=jjC+4OYbarkYTVgJCv11HUI2CwM7xamltgq1raHMUyVgxeiUEjCPZjIZtt0QMQZaXeqOWiQERxf/NbQ6/bFyiyjRxY2dhDphUMZUKBIiJ0bC//Z8YYcQBreJBwSZ8sgNbWKRVdU+6xFxSHndqfPAlsbw8FymMdtNVY2yBoHpcEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720952423; c=relaxed/simple;
	bh=wU/8XDur3C4GF9fwYPtHKua/dnPHTERu5AwXyk5mu4k=;
	h=To:Subject:From:Message-Id:Date; b=ZjG9u/6ofa+UqR3fK6EN2Y47ic5MtzP1WTQoWAhOB8xr7/KZBY4HKYiQNR6BJ/7b5ahnMx8SuS/OjHrYclaOX2zEezB2F9+b62L3cg1RjlUmiGgFTTIWGQOeFRIKwMD7Ik/W0NFRi2XfBRa7tdar34BakS5HSsA9TLl43wdBL+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+TbMjg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+TbMjg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4824C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720952422;
	bh=wU/8XDur3C4GF9fwYPtHKua/dnPHTERu5AwXyk5mu4k=;
	h=To:Subject:From:Date:From;
	b=E+TbMjg613yiD4kPuFwv5LO3yoM5vhKO8jWjjoHzAXLVDucQWvhTnXMwCXgMwZFh/
	 hAUVK5kXTDFEfzC9ofz1w7t7WkHGI6jQz7PSV6M30YxRSl/V4gfIaPQDY6z3QNmyqv
	 Tsf1SjQ86ZSKSlQtlvkZhIKzele6paIB+DY3d8E4wUKvUSe/40meJ34CJkFKzqkidh
	 gkEJEMPuWedMj32cABbtBqzS5RBetS7hMS1JAJjaFtlebKLBltUl4XBUKmpUO/pW/0
	 yb3TDocUgZfVvkiB0u+txFjwD5JH7RZovUCEu3gteDdweNvG9oXDc2+8vF/0rxj2Zf
	 3sgiNj3lPAyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF165C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095242277.30676.14414511327066954861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d543fc71f87cccda9ce3b4a3782ff235370e5aa72ec5fed5ac85649a486f8268
Date: Sun, 14 Jul 2024 10:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720952422
