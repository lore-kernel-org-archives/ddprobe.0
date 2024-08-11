Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377017F6
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723391754; cv=none; b=ZKxHzbb/9TrZ/A4JnvRe/YljvzjD5qkAHXC+pSglJvLICSmi3Ip72s4/JiqhCHmkldNuoS1LZHTbPon5U5NVZ7rad1jvRiSZTFhahJuTwRXC3yfVbrTRngxbuxm2NpM4BllgsB7Fbop5DG8fIx1wQUTntG1tNZzQ+pfvkU7ha60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723391754; c=relaxed/simple;
	bh=PpNLBpHMBfm8lWn8UgGqbxYQBPilTziNUVTA5Vt1bNk=;
	h=To:Subject:From:Message-Id:Date; b=Qqnd32i+XUmXyeWDmMvHP/eqsNuNfrEd1CSwsaW1cN/cxodQTJmwUZKWjo5R1OnvEMZLKEbHB91jSnsanxR2753MYmwtT1aWDWySKGopj1PrWR4d5XhTWJAUBD/nQd+V9o+CJeV2R1b1Z0ouWQZoQE/sMv/oSLSkB/eAtbPypKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra5WVcDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra5WVcDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A579FC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723391753;
	bh=PpNLBpHMBfm8lWn8UgGqbxYQBPilTziNUVTA5Vt1bNk=;
	h=To:Subject:From:Date:From;
	b=Ra5WVcDwsjoxvji0GoKw+KQXoEG7bTl8cL9tsJWbrqeD665et5Ixq+WtJ01e1lIak
	 d9ishDw3/gpGzCWLAIilRf62IgX/Y47wLd8QNqQDwJ5HaD9khNaABz+dgFIGRttFG2
	 8jaWn5tSqAdi3+DIR60thYPbl0klZ4lIKVUlSLbFmyefruKfwDhdDzqTsRtcLLNThS
	 p2f7PEQxlgVDXGZcz+zKsXZqYrQp8ZKT/KROctSqXLJwBRMhe7FLOGL6cPTvk+I6jq
	 M7uYiN1uvPVz8YQKBPyuufHGoM4d23wPGj92tN3jNMs9aNH+qHjBkz39hzWzVzR/gK
	 EZRnu1E1A3D0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EDC52D7B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172339175358.2100.6420278227560030708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959ec8be450d7b0d186c8130ac70604ab3c4395891b09ca0371954929949d35a
Date: Sun, 11 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723391753
