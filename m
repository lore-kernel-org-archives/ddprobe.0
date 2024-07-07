Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669FF79CD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720323383; cv=none; b=C3YoOUz6F5kaTgNuH9kJV2cJafE2AjJ8onkIL+Vihl0+f3uK/QQv1Eo0NPJVhHq9xv9cTZyHVKqqIkKZAS2QD3Fm4yyUGm0LC67BIETy/b80a0T46zcB8l/0Ucyl1ROA/J+YMtrdgmtIPp8sGiIuz6ai6uPfq5PZ101bHO2HwMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720323383; c=relaxed/simple;
	bh=6cNPeciUt5mfSBoQtZLZ64U1rV8wB20KQJQ5qtfwS1Y=;
	h=To:Subject:From:Message-Id:Date; b=Aes++Tn5D2aqH0+jZK8nDJidPcNqkTreTVK4jLHKXdi+pUcS6UIrLftAlCpgIRSb/aySrNQxXNJVtTWA1zxBNk02GCRnRSCbMZkoBlbDdzzdRW0wwabAlSPna2240/0wYY7UliZLq1AYny9argoq1W5D4ohYxhu6AqlZb8Ef6wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8FnE7sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8FnE7sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8700C4AF0A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720323382;
	bh=6cNPeciUt5mfSBoQtZLZ64U1rV8wB20KQJQ5qtfwS1Y=;
	h=To:Subject:From:Date:From;
	b=f8FnE7sjY6UFHxyl1uaQBsNTxdNCHdLhcqdk0NipINKWtfpZykaAHbW0Gsu7ioR0c
	 A1m0MK5sRCLvB+QBULMV7RBvqurSbNnI4HSMY/EUo4e1PhFNCJkKfa8xX+n7RQmUkj
	 QWP8O+WEf72cTEJrkywC4C6yfKuwqvoQlI+joAgpAPoqCMC4XkKzC5XQLwP0PeCwHA
	 GtTt2dV89wZKVX5EOVP/oRQaX0SDBdlLgiOXrzlRPaPtuIM8PY1/cSQyR/Q7FHhupL
	 rGdhy2BzRYJQ0rtUJzqI6phcUdlFwDc/+iIy2VlrQA1n041D7IYtjqmfNIPU+r5O8k
	 XzbZpb2uxPLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EF2C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032338276.31118.10249398271418497540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf55b9693ca9d50d2a8059ad1e8819300519456ad16384397be71060dec0e9b
Date: Sun, 07 Jul 2024 03:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720323382
