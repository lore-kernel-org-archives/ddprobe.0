Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E28413C80C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721778354; cv=none; b=DtYQFFW51wKYZyqJv2LN+Vp3EdCIZJftMj67RgnnZWRS69uPfbUIieiWqfYEsNOBdXxXIawEGZroH5u5cqT1UADBcwZPr2jxYkyyqTeae0aJ8zVV1Li+SSb9SVX+SmnJb8BprsaTthnMM/SNEY7wbW3bO6Ce2gAFJpebxZ0Cil8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721778354; c=relaxed/simple;
	bh=cC9PHdn1j0AH49wT5d1Lx8qu5IhDySeXuS/YsULUDTA=;
	h=To:Subject:From:Message-Id:Date; b=SF3s6xA4nXGg6t424MlmMJ6WY1e46X6C8lG51qmIJM5mLgjUvok6HDq7+IfVzYhuDbOXeBeLlPu032EQbfD51qktO+644zoYt24mWtyIr7EpwjFNUOA3yP/4m4F3EOLyslNH1/JYuqq7ZdXJnGcX/2VO10Mwg9IIgzoX7FpQqg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0R22MuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0R22MuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFD0C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721778353;
	bh=cC9PHdn1j0AH49wT5d1Lx8qu5IhDySeXuS/YsULUDTA=;
	h=To:Subject:From:Date:From;
	b=Q0R22MuN511abgaFBDlEmTKCK1Ire3r/2x+cPMMaX6497tQ8hFyyy+R8i8FHVTi5b
	 F3fKHGNfD0RhLc1pBSzQULF7K2vYWONJjMnxhE0Bq/taOT/m+5Oa7o6PZdnLvTkK/G
	 J+qtsIJ1/OWS1A1uYbramRTnbvbdrP5qESMczdQqYLujf9LDFVsnOzCqtRDgW3XPG9
	 8mHFWCroke3+NmgHs2GXBodB9J5Aq0Rrzt5DQH/Mn/R8Y30ikDXBKZl2FXP+sBhxmQ
	 JAwpSaVmak/83rZOnA7T6dsyIes+1wOxMcORp8X/jasNw27TT7X6RRlLxAiVim4q43
	 olyrPtObZP3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99415C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177835362.5558.7365270941588728741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51572f8b488e272ef84e889c4d6e98781260294d7018aa402439aa234782fc35
Date: Tue, 23 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721778353
