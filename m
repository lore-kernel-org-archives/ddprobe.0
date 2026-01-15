Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B012750ED
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768492434; cv=none; b=rVgl7k9qvlOZR5Xzvb7AOuXOqI+VrxjitWJT0vVFbZf/P0G8jclmxlVhJ8sfBjxf01o8lUXkpB6dl1t+ZuytRb4NOe2Sp60vFf8k65xXGpyDrPnT426WPy+OFlFykA/gA8Hx1aoIk4x+mi1Y+nWk4aH8eHlgb1ZlpWXEFhfeah8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768492434; c=relaxed/simple;
	bh=ILbEioI1DgrpoVEqoMG8Pi8jHQgHx9kIgI4Y0tYRGo0=;
	h=To:Subject:From:Message-Id:Date; b=u6GwLJIJO6MH4dYPN30AzCqnYNAirEyDyhUXN/DsfCKnJpk6z3d8p94HrAWzqumog2V8/kkpTSgyTPOLMlQG0Lvlqls8wdKf6Kg5+aXrUutU60DCeL8dEOl5MhrjHOs400Kj7fMU5wLB6YzBE34HtxtXQgFBxM6H4hS4cNDI9Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwMU/hFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwMU/hFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A101FC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768492433;
	bh=ILbEioI1DgrpoVEqoMG8Pi8jHQgHx9kIgI4Y0tYRGo0=;
	h=To:Subject:From:Date:From;
	b=YwMU/hFTLByRUYik9imyp7qsUB9hJuCZQ6sp8SWNt2CX/LM54Wl2mso+Xb763G1T6
	 ASgdZp9DdTzYwLRA5K8Hbfgt1WQfrxU1/tlmmdsP7mMmRRhao+kW0mz0G22j9XkwMZ
	 XrRxuk9b1SOGKG5f69fZe2wVhOJNQ90NKfBb3xCLPr0ZYdzt2KlWpXdddbTcfcz5A2
	 yEsS1xjrUPI5CR9INBF/cHIMFC9HVA2fd05hxnaj8lOdCM49u7U2aZPBicKojj4pP5
	 XbfWnlBDNKkzT6cjf9fSZjhnJNWeVe6l/gbMHcuwzOHd3kl4S+9cd/JIj7KFcW5stO
	 4hz+khMsanUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071AD44C6E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849243358.10384.14147798313957585502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419eb8085cb5c6d65cea16eef5eed70af842080e9db6554734bc35707dc1cade
Date: Thu, 15 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768492433
