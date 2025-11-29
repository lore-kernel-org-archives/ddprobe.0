Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404AA14A4CC
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434574; cv=none; b=cx8W8KPbStHJe225IhNcUNfWuSMm5nTWR8kDyj0ncpnjyo5fuF6MReB5j7tSpYNYoCZTb5XxpjzNgYhHb6IT7EI0CT39ChmmNjPnjDvxBtiyOOl/excE2VNh0Ye2A1wCtSd7yA7rQB8Ur7LpCE44GRqGHFfpr3MbSLEaPYd8rgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434574; c=relaxed/simple;
	bh=6miX7Ci/7ui4ufXxvagRdA+JCa4XqHrd60lWbo4S3QY=;
	h=To:Subject:From:Message-Id:Date; b=iq/PQaLQeSVp+ZJyDw9VF8p6GosXcTnwNnfSrYECnJaGdZ47jqJ9ujkh7xCLkxQRuxgxZlC8SaRPPnnIrN7LWiHrjlNSgpshTDxoVj6D72GhLyQoCn8IaMBb3UHPO5TrU/kD1jvmUacVfUGUSJMqITZChjCaISAf1vMg/BNQvx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5PwHlkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5PwHlkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDBDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764434573;
	bh=6miX7Ci/7ui4ufXxvagRdA+JCa4XqHrd60lWbo4S3QY=;
	h=To:Subject:From:Date:From;
	b=B5PwHlkKZHjzpLucMQeHxGV6elkqDDTE/V1HcXPITvS5KKwhsUwUnaIxKlMNAsGok
	 A4FgubG464R57OjHWteCsYfNJ1xn0oItoq3fGvp3QohK6eEI2doow7dcOcslWu6OCp
	 pLU2TYnktR6vqupVR+yt05XkaLdHkGgGdnmWEMCHn7QfvpdO5dP524Cq/dhtdhsxgh
	 4WTl5PmjowewHHfrMu0uz8YnrsseajFOcK3C1gL1opedc0ndwLKeuuct/OjTSWJl7j
	 k9yF8njzxu6SFJ1Auxtd4GKN2eDRFGtdP0DuF5qHSUNCn0SLwl5RExjf8UwiMbDmZF
	 5+47N4ovsC4Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D3ECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443457362.21828.10040525104801119294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5076bb39dbc593a75e981b473abef7464580e14cc3fae18afca1c27f8a39c30
Date: Sat, 29 Nov 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764434573
