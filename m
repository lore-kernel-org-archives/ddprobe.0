Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAE43234
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712797697; cv=none; b=cfRXVIBIPliejyoMGUr2MeElUhOBZRpWjSj5DA2xzJjAM/uZXCR1WtNNOJRT6QUvmJ62827No7m4ykICwHRpJi2ZNg6fu/WZSNu/AejW4pjnCxiYQ+GZvqKZUjrvO3hGlyTtGluaEaFwriKqAABOiLLSjznOvzaSS28QhcFn4DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712797697; c=relaxed/simple;
	bh=anhX9N97qiNop8gDfwzSWASRbzEz6f83F54F24I/3ps=;
	h=To:Subject:From:Message-Id:Date; b=h8VryEiZPZIz3yF4WayXVR3seugp2FGbbZJnQ5YBCHtbGrbqn+MA4cfVB5ovW/9JyDUtahyz/eD8cXts9dtT00mL1d1pGqSV3kJvEqGWXzQE0JwUW8dPcgOBK5fAw9S6hC5gQv0PXVqaZKRCoiZX1cnSXFRI3hIvoL0hehgYPdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGDmY+/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGDmY+/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C698EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712797696;
	bh=anhX9N97qiNop8gDfwzSWASRbzEz6f83F54F24I/3ps=;
	h=To:Subject:From:Date:From;
	b=XGDmY+/+O4baAquPGZUIpVL5ywSD8vGz2WR1aB4RP4IhtGFq+drM8E6X5dJGag5H6
	 rk0VJ6VQGB4g8hy2qCgN4j6DHho8Aky1zD79RWBbXUE7avqkBdD15Bqam7XXZFTIoD
	 wOnpdI+fGKvqvEC91gpeQnzoGdfkMh7y0xW+v9P5/SQKZDq82Q6ba4Z3u+EoJcO8BL
	 BXlgOylawUDypsHlFGX9muTQ7lUbkUTtpax+hMcHePFPcJgZIilP8Qw9jqV9sIhwrA
	 y8HWSVv2s07HCVZ+BsYM8ZYDGQQC3ZrovZhOlx7EvDhkVKTD1RBFCZHpcbvL5LxEL4
	 RXdELCqQ76GMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F697CD11C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279769649.2294.17364475456836738520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4aa9dc8eb7da374c8e97e70597b78691e05f576f134a9e9dbea35da0b90aa0
Date: Thu, 11 Apr 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712797696
