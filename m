Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2701D30B51E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774729494; cv=none; b=RqinvjOr/i3NyHQ5OewoIrfhCv/UX6r1kurOVCcDL42aiSgX763+7pnVic00WdLi9CrwfSvwI9Yx0GpBnOwY+vk4FI/xsXa/v4eaxXzikZlvoe3X3c+HKqkOPhRMZ54pda42OZgWTSr7EhidYXehda9ZvvC5UkgHaDOyI9tNd20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774729494; c=relaxed/simple;
	bh=kfq8p0d5lHdRWY2uZRKkW/WJsj4UtFWmvyxjkqbHHf4=;
	h=To:Subject:From:Message-Id:Date; b=dgTeG2O8NxHSABFLIqjgFHtT83F+tF7fbVksYLMdoSIgAnsDlTVGl42nPOnW2t0YmDhst8OUpz1P00O96B7mHWmnJHh0WpsVlsXpaYTOKTnAEiP729BiXPVFEuGhJMh+p34NVSTGueiWyuzej+Ho3mwBb2gfxhV0XL3puqCJ8uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgbIoCbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgbIoCbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D07C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774729493;
	bh=kfq8p0d5lHdRWY2uZRKkW/WJsj4UtFWmvyxjkqbHHf4=;
	h=To:Subject:From:Date:From;
	b=KgbIoCbrSlgjLqE6aZWkNgD0S2b5dBkZmfG+pqwqJDmwp5t4XGpdDztIW1yJNXuqA
	 5RfTBuOGexpT51XxQfC8iUk/gOIR18r0QcN0Vyro6P9qbawEeU/8NIenxmcJC3I+Ej
	 AzeYidjCwK0LUeCsYlOX3DmWIT/1HZL0jbL0o8RpRF6qF4ia46Q2GA5q4kud9Qf7mn
	 RvzeSo1n963FC0Q2YMU/ZyY9Umse83ZsFT7juT3YNc+H494Gay9Fr6kBOiAPyZOFaU
	 lhrDzt2GaJbiLmT0aHh8K3ofKqzNGEbsNNIAJ/NXvrlNL2MfDa1ux+0ScYZosx6zFR
	 J9OCRRUO1b6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B410F3DFC
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472949358.868.5646159752332232161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d46ec1d57b243ccc9575a9271a2f787fe0bcb1b6b2bc49c71daadb6cf6c3ed
Date: Sat, 28 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774729493
