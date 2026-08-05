Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06D53B3C1D
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785940836; cv=none; b=Fq3lxWRIXuXtVwlpKNl2OnLMBWZdZ4hCQ8HHJ9hD7oQf5sT9WLWvJE5tWKc3IF1sfCc2uk32vKzUCnOhhHZWz0S+aGNYuZOoMeIs3uwUPyFEsH0XJWyzmlQSBl9NkJFoARm2k5Q+2fjhTduZC2hDdecInuMrh0iWbLhURHY14TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785940836; c=relaxed/simple;
	bh=0Uy792GYZ6Frqd+Oz75LVHjPPfG5NUqkLR6Z9vWzzwU=;
	h=To:Subject:From:Message-Id:Date; b=FGO/RaEKRgmVSrwBV/G5BfSIO7aV64WeoBNB4u96EqM7aWt7rjz97XEC4xII9rG6wpc9FkgJqsDp1TX3RKrLEJ78Xh8n6X96RIrYb6Sv02NnraO7sOgKluIMwbAt7P4m+lGhoSZh+hoF3viFiQIlE52Cci9T9NFH2sytIQkTQM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rELyJVd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rELyJVd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D297CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785940833;
	bh=0Uy792GYZ6Frqd+Oz75LVHjPPfG5NUqkLR6Z9vWzzwU=;
	h=To:Subject:From:Date:From;
	b=rELyJVd0wI0VXuYLDwJs2mh0PFfkMS/GFiWTJpFvqXP8n8iQLvLUe8vQUfiCCaUxk
	 LpRWXwyGcJQRw0gn82+C/h5ESD1AXxwG9fMhTy2oEnLy1uxwvJ8RhsdvYsVJukFShD
	 M8czKXCtLEshflXUc0OgUtk5lsCJmrNyjHflDUcafvsn31oI4oHApXnDgF7IlUCKJ8
	 +Q3K9urrK6vI6vAjAfurTifMFdVNItFTX8a71iJkwPye/MCPrMOeQXCwP/CH0MaDLj
	 sypGfbNe+bfCppjEY5paTw/q0jp88Uvxvjl1hZWnSkgfUnqwuBD1rXwDEe4FBr4ivD
	 U6DdJ2VQz+i/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA094C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594083368.31502.17661744082141250391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa43be0e8281fe3ada121cf3f53d999c8c47ed0d502e4a738bf6da32fe3c6f03
Date: Wed, 05 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785940833
