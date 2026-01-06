Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0236A156237
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767684234; cv=none; b=qzcvCVaZZ7tM8L6rMlSWVEogdnGnE507xI6ViSDF7wKEiVrYtWFB0xeQNtKfiQdSZ2Xbj2ri/DDrBYRR718+7KkW9bFHb1WfQVrbqJqtmsqAd+U+6taheDntq+hgWt7w3XwO5YPkLrxZtoNFYzbArqEnTTQPozmm/buWn/t3glo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767684234; c=relaxed/simple;
	bh=bESDsxo0S+ohRBWQWJuwqcX+t/lf2myNP4jQ7mJk8OE=;
	h=To:Subject:From:Message-Id:Date; b=d5dEUDjIBftSa26Gkv2J9LLaQRSMlUsaHBlx5jcShg/wwG0Q1pJ7N2Umb2gCUOjoICqRGlyllQQvW85WJm8kj9C06FuowwnMNJiruGdsSdHjpaH9UlVaAJipxj2KQvJxf22GS3F9IHGT85bpwdcfXi1ohdEbLkltQ/11yiCnA7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+q7EgbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+q7EgbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01CFC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767684233;
	bh=bESDsxo0S+ohRBWQWJuwqcX+t/lf2myNP4jQ7mJk8OE=;
	h=To:Subject:From:Date:From;
	b=H+q7EgbASfz+ycFgf9MxYDi37T/OnFFuspPkmqAlv1C5A2IGMc7aKcfQGHlG0mFk8
	 cZmTlVdrrbUNNMiJj2ySzLUMTnRSITO/ojPb/UR7vy7bCDXex/BqdNNQhEp6pDQ0f6
	 eOG7HaiiS752WuxYz5MakbLOuvKbEZX5pfgC0jYrqJgKWJM/jpkXO8Tjx+KPIs0MUL
	 iQBv2InfWlpSBrWmeCq+ZN3NrhrMan+UGkW2O6qWuQyc0YNz86oticcZ6fouxjKLDE
	 dcMfWYiJyWfAraH/wJvipqnO1daNbjgAoKr4o1DIiRiO09bqkHqJeN2iKN0cO/7dTj
	 UJqVS9z93UuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14DC98331
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768423357.8549.4145700843282409424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5a85ccd836d63968f8f38c3065ad9bd395f2a20a4717614a979ea1e8492228
Date: Tue, 06 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767684233
