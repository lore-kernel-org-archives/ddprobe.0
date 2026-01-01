Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03514231A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767294234; cv=none; b=HWd9GJcTa7RQ8KtoiApmdFMzYU9pFQmYEYYNXkHPG6k8jP9wLaPnK7jBaanS7Njm5m9OzVtlxfZvZ/uV1uoTYyDr16SyF8vLdWdurcgsQ5iFJ9Ovr770ivJSqtmSYNmsfHe8PdXjlGtF+rMbPl5mpAUtcuN19giJqIn7FS1U+zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767294234; c=relaxed/simple;
	bh=SG4GnzcjDIk25Wrb9ir94Mv0QTBlHxkqYWTXBi+gvdI=;
	h=To:Subject:From:Message-Id:Date; b=YPmiTSKfh17o1eIBD4Oa29WMtw5ucUY2L6cdnzN8pPz1MsK3N+dw9xgPekr0I5jTlU39zLUQPST+nzKDlqk8Hj1Vuga2N/uTLxzPO/KzzPlGj6b8TKemEFrrfsNt+XCOMqjhjZ1AWou2a7fF8HJO6vpVSrj92yMLVO+6/0uZhIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB2EPvKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB2EPvKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767294233;
	bh=SG4GnzcjDIk25Wrb9ir94Mv0QTBlHxkqYWTXBi+gvdI=;
	h=To:Subject:From:Date:From;
	b=gB2EPvKOJg+4+VX7K+9mRVkQYxUPGsKN/wW+YLcdQtsGrSIMlEXVRMh/27bbYHNhJ
	 mNPpg6COPanSPRtyopaZqMzFrxcVac1ZqeE1PAzf8EYXJ0xIIYXVX7TUjAf3HctR3S
	 Xf4+iT/weo/beYesviWBwWIPHTqmyynRLUi9Svhm0cJNvxe8iDlxlpQPF/Ka3axAEz
	 a2VJszGX9TZgg9e1PJwr6GrPS8FRzVyTTRk6u3dlL9q28vZrc8WEFpWoc3N2Dk8IRS
	 G1BR0Nk1cYXzwGPTG28B2bE6v9WVVn86CcFom7MFj8EDqG7yEmWGnFiWdHHGNqeBJ1
	 BnL0JSjjTeMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E752EEE250
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729423357.26628.9506484470034596780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dec4092ae51043161b2858c33f1412044098035cabf22e1244b9b8221f4b7b
Date: Thu, 01 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767294233
