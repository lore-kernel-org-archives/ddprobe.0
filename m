Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203CE28689B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776926854; cv=none; b=KFrezex/8pdFLB+Q2vMmasOWZGLzlMq3TPZmgFYb2AjcLw086XB7RBAj0XAJHsyMvM68XWvjKV9uppQeHFEN1I9SfKpn+WfXTstN/hWfC/ccSpmgqL+4/vDXoV2g5ni6rfeEHtne7KyaTSExiTHQcxRX0I5LpNmn/OOlpkWuXjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776926854; c=relaxed/simple;
	bh=/DboPr8kpN8/CTYBQg4qoRnNpwX18eWN/kS6Na8wIMA=;
	h=To:Subject:From:Message-Id:Date; b=Daa0flkxLEnsRUO4ORo6F4q3EeUVPpxXXG11ntjUKVi6TqKPucfNsDtbfGL2TFa2D0Thb96Pe6wl/hpLGYLyHQFxZGLGld7iHLBk4FoCUtBgI8dB8VqORJLdWl4G/tvE3n4axZ+3XYtV/p/LeL3qeVu3G9PZuFfL6h/zlY3Y1CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYm98h5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYm98h5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C616DC2BCB6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776926853;
	bh=/DboPr8kpN8/CTYBQg4qoRnNpwX18eWN/kS6Na8wIMA=;
	h=To:Subject:From:Date:From;
	b=KYm98h5kXvONWCfwvRetIJJkXnh4zAfbHd1fJDfE7yIsjE8hf4mhtz1hwuu2g16EW
	 qxUHxKga+BKaI4e/vYYTzhnnJX+u3URf2XHc3nLu0KlkwQcfqSJu4xzW9RDaY5XwKy
	 H3pv0K6Ao/yfUMEdZsTMwXM669XLZv6UUk8C6pTsVlNrjTcFOjaGWNSONWe3saoJ5a
	 BXQ5dEezJzIPF6EDTl6gT7aib7dGK98odr3FLJY1fIAMkfXu+AfErG5eQ+Cww3DwzN
	 bVFhVm9PuXbqvlwzmQbOnvOhMDL+ul91bFo/aXnAtt1dOi7sM/Ut65Rb9Y9oRVmniR
	 7yQvZ5pTXK4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6368FAD41F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692685373.21294.2790449923101359074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3c660d5f4013c57f2283fef537385216e6f15bfeda3814b909360860a6ebbe
Date: Thu, 23 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776926853
