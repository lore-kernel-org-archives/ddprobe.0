Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263343D9040
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778748634; cv=none; b=qWOJsQd3/KzY84h8Cjks5HEdPp9eu4kGZX2wv2f1BV3XSHtcGA8MbhhnPli3lk2/9AFinLc9MqepCift2xRlFvyBIlg0a1MCo/3K1pzAJMNYCumZxMZ2NZ1iCJWXWQr2e+1QjP6jyPxIBlTvRzHvtS0eS5ucG0QaHNPCtUMEuxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778748634; c=relaxed/simple;
	bh=2kXOCjwE9Ep4PqrfTDHNpq34DwbcWBfWC0rE6/onR2g=;
	h=To:Subject:From:Message-Id:Date; b=m9ZTfEbufX/tfLj5MgZdtXb37bGzeXBScOfYLXDjY0j/qzJfgfXUBRPpcHEe4Qg9sc4hUd+FQRhQIMsWxS7cmImHxuqWif33FgwdXAU16OZTJBXM4XAafqNx8bhtDx6YtuvKTbbh0uEVLKrJsrjVnRqR0VTVWeviqNJuwr9T/b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fq9c914K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fq9c914K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34BDC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778748633;
	bh=2kXOCjwE9Ep4PqrfTDHNpq34DwbcWBfWC0rE6/onR2g=;
	h=To:Subject:From:Date:From;
	b=fq9c914KV7oXV+gjGwgTQASs56bRAVkGFlrATwI5KvNB2hYVqHPTp5fc7nJhQkWye
	 w9C67KwdM3wS9+CIhatdIj1Knxl5oldN+nE6kTBkvbpvjdqEp9VmK8S4Pjx42+UN2+
	 WwAE+O0QXp+jrOa7UaQKffnc+txDzjM7agonf/tDnonu70D9cG205aWe2Kl5yakdQv
	 OuglQSg+h8uzOlibQ2lWECNl3gHSQ1nSqjoyT/2YU41EdFggtDtPTFcHLTSwW3XXak
	 n06k+Z+e3nf9nIrfcb3tC5FaSC+FgyhugJjzuRUGz9bp0dS5fPjNt1r3nPsOG1lwP2
	 6nGkjU/+KFVrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1459CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874863371.3781.15324943721496312666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2b4a6a595e9cf0945d6080eaaa73d781c628ada149cf51759033cc73181c94
Date: Thu, 14 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778748633
