Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4A61D6A6
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709916497; cv=none; b=iz8ObUSiKBb6Ml+evdiTMjAYSHmhf75hvJQm3DxSgDgvtPqZibcf1fBnEgrDYu+TfrM1Bxgy3uP/ZUnGB/gzgEVnRurUX8B8aNTpO+tLsEbVFwp++yJn7dfRXp3TxRrb9t6nJa1fZfBu/2SOQcjVKfIaixDcRW/cX+XGB+HEzLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709916497; c=relaxed/simple;
	bh=D+ZMH92ZFUVdK7u1Vh3nwMbpQmF49h3VOc7JT8ZHM2Q=;
	h=To:Subject:From:Message-Id:Date; b=cy1wRhIkvf07BD67WkrZk9ab2sUCiw3/943GIOsxcISviUFIX5x0HzjN5YA7djVfXyjPtxHp9ZbOc24bpRxzeCBwKlS/zJd5jn4FwYCdVSUejKBbnd+5RSmhw8NLTTUAp3ZuqCKB+1PyKMpVLfxFyXiUzV91k0UTSWYWVU5ZEVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPQHXbSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPQHXbSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84567C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709916496;
	bh=D+ZMH92ZFUVdK7u1Vh3nwMbpQmF49h3VOc7JT8ZHM2Q=;
	h=To:Subject:From:Date:From;
	b=kPQHXbSWevOodu9OZobozSAd8Tbhf1e/N0ReFHcRn0/X39LD/Jjdmzq7z4mPayeU8
	 GVyZsMp9PagfPzs7LW7lT5DwVzPHdP/NPZDHAtwlHPTsYbSbSEsslJ8R8afofdDhSI
	 mBoBLJmaPIzjiTz+U+XEYrgptTl6U25f+TOEh/CzX8tlEntSPNfTdDyeZydmJAzCts
	 y8uboubymqFd9gEcF0vBrIpevxvCmRE4cyqdWSEZQeIHIhUFkzCNX7owdvea8DUhVD
	 5b7ljlAd7s3sOII5aJmQErdbYPUlJ3Cwzu0Ige6maauLw0HMch1m24dAsdw1EcM3Wz
	 kGWJSghnXzC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFC6C54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170991649642.26427.2013695593780160097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c0c9c1525321949ab94d48dc6606f02a1bc0a5b4d47b7c68a01da335091447
Date: Fri, 08 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709916496
