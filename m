Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E06D23EAB4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774376094; cv=none; b=t+VLz9fPU5dY4kRQG0pqH9cBWWxetcdqX3sGZB6uo4ZruhHYqomDbKJt2moZskDFqlTiq6n3N/mb3jg5iusnvc5oc+ntf3AMBHlFbWIvGWRpX/RTURk/Sl4Rn4tQ5ibbZh7irfVf+2jLbNn2H3Kj+5/v1c6qGq5ee9zUlwe2vbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774376094; c=relaxed/simple;
	bh=fki1Ew73x5v8IiSllLgGJFFXNxFjghT6aVOmYxib6d4=;
	h=To:Subject:From:Message-Id:Date; b=ZUemDPu0AZsDJtyKxASgNIaqdatQK+YonVLm37FvNVAC3/bqL9iu9VBO3M1PEhNBOWKkWe5GtvZcuqSdMmH+qyWW84n1ca1QBBrVzMjPRhLiMLfJEv4cO3hrK6F71jIVKbrxHlxgeXScR24SyP0NLC1DCSV1qwU/IJaPvnarrHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZ4Wg9jG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZ4Wg9jG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3548C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774376093;
	bh=fki1Ew73x5v8IiSllLgGJFFXNxFjghT6aVOmYxib6d4=;
	h=To:Subject:From:Date:From;
	b=mZ4Wg9jGW6BP217rc84UbLXksKMlsCu7enV16YK2FkIuppZDW/dE5qgdNf1GoToYh
	 CxkpaouDnF+YcHcqKD6LDscox1uEQoMYG5kmKSxO5isPI3IpweyKQC8/0zFiypwYOy
	 uj3fkcYBPKxf9gon3J8i+li70iGPeCuOyl0CyHFklP6tlbgaj/4hqLqQn1aYOqNqm0
	 yywvBaJ5/PFtj5by7BBfMHx6X6M1/vS6nafoZj1dWd/HGRaIPPR+z39drcfOFR8hl6
	 91zNquLnTFBCcyMCdpm+J3Sod2trGg2FgDWeGtBimBOAfQFFlXX5bd6MMKO8eagupH
	 r/lJYkpBhnCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D8BFEC0EB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437609359.13274.6141537833579386218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7804005a6525d4b2a06e22e453c323f219ec9a337db9b1deae539f210b3d7f08
Date: Tue, 24 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774376093
