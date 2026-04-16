Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240AD40DFC0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776301654; cv=none; b=TYIo8AgMNgcxlMOb+GqacI3mWan2j7vHomObgXouJ9O9OyBvCjjXTpQY7rz4BUZacb6ctEvKyOiV4Cc0Mx+HZN43g8xgAXIc3V6Y3qM1KI6MpvbZZ04V8+dwbQHxK3FQ7kE80xF79lDlNLKtSpk9xR2LpfD57grvsWycT/u6F+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776301654; c=relaxed/simple;
	bh=p2UkRFRT1ZHUhQGwPxEfTwIBpKVNpkxps+3TG6zVoJg=;
	h=To:Subject:From:Message-Id:Date; b=H2Ne6YY25zRLMzYsV36h0vwZSfoe4MnGfpyuEBmtgWalAWm0kRk4XwqIDyF/wD5RwT7fymzNnqQ81HuAKqaR0xvclEdC+fcWTVavGBn75dk1xWJKmo97uIRrzsfgL0SoFRKodwBgVCB87q9P61YLl4wx1d0cZsbV7UrMXKKWyQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZYYqLVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZYYqLVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF58C2BCB6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776301653;
	bh=p2UkRFRT1ZHUhQGwPxEfTwIBpKVNpkxps+3TG6zVoJg=;
	h=To:Subject:From:Date:From;
	b=TZYYqLVVfp+o6qXtNqB74TYGYTZQaN9BqkRUPP03rpV7y2tEqSVFClTg5Ok0gK8H6
	 ZD6PBbs/7jsx3Col1XHEXJqHXuhVmxufmMcvJ5PRZQBX9XQ6IbdwuiVtaur+2ts/WA
	 qBW+pVzjwLpcFOoaqiCmR+j9A46uMn05+kws+b8zJ7olDnTBf33DHASh9O3UjbcrPY
	 mBVDoghEGhz07evodBodIpU+nkloTfVB1HkaZjEEJFIGJnmfMncF28JZCgUccZEtSy
	 zf33PuOGXZARoGIycAhjUOqvtJTargYAZ89QOU24C5+u2SjS+MHUUTTrseNQHOF3Oa
	 nc0LaqNq067Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F7FF433D3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630165369.26501.11564176625468730500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c59d48c42d510351595e92857c5b7f49e4f10783d1898243c07dbd717266174
Date: Thu, 16 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776301653
