Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F2D2F3608
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770912894; cv=none; b=fOg/w0Gj9AwDugNggrHJgtQKe8DNLRZcChpTmHYZJNRfmV3xFlQAbKsV82ayw3mbfkzHvD2Ss2mOh1wuDc29UcimlAuBN661jiNjcRK55d+sd144dFDo2fJ/Q/4Qy939+fel6IBRv5NJch9PuCZWhxHMtfi5VgepdcI0C9YkMYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770912894; c=relaxed/simple;
	bh=bbjnOGN+/eA6ERjVjkILGdfMiv5mJudeDcsNZXlzLS0=;
	h=To:Subject:From:Message-Id:Date; b=qjfWey0uGPOxnF3geujp5PxDsBmdzSnLz06vgcxiWJ8uTZh5ujz9gJJH6t08tYu+3BF0K1J78clSg7nsRhrEHKg1DR7P+0pz5rR+9MplRnaxUYrc74sxJivnjENtjLK8m3fqBgUJk8pEWiSNQlm5sjMOmx3US26fzNZ7v9dbeb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUmIj8Wl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUmIj8Wl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1EAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770912893;
	bh=bbjnOGN+/eA6ERjVjkILGdfMiv5mJudeDcsNZXlzLS0=;
	h=To:Subject:From:Date:From;
	b=cUmIj8WlTwvqrxhHnOSdDL/YoBCGj8E7VUBYNznN6S5ozu/1pgtCh4IIHAhMHzKXR
	 9l7Nq+9vUJIBqKFzny+Ksq4w01lmSoMZvFU8nYPl2yEfkpC53iMhG1aQ3ZPh4nnQDT
	 kwCGL408Aefn72eOdOOPWv5In+qnI0/vcjBeBd89oCHk46jZP7N+G9b3L+OdIDtpK+
	 +GIiA21uti49D2B5D8X6JHsq5JoCM5Vt10wkzD23FNRS1Jh1K07aN6bqCjlllGqrzR
	 y3AuJXUO7Xu7ZxgybV53OI+6oWLININ36t8wfrT4rSpY7C0f/IbzhBG576Y5Oq/rfx
	 aBJwMcum/bOLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C6EE3695
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091289362.19515.13206066995771233417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd21dac026d67ea49556bddc60475934e3332a5a8cdd9467ab5d84a54491fd5a
Date: Thu, 12 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770912893
