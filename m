Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA3323644D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749770394; cv=none; b=ZCM3ccnvOIFXZtdDFI/5/2S9VFzqfGyW6W+A/X6llx4kQEdtqNQfc4yFQatOOo21s3tUnu+Ua0qTOnWinqvlLwVYvOP02Dxlktr77T7B3R9CIRp9OsLJAk/dcuP0hW95KahxqR0mDXSkqpcxZkcPX0R85/rF6mi6+H1FUAVt+zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749770394; c=relaxed/simple;
	bh=3iZtWJQYPmDqK9KFuO4dJ6A+psmQeJGD8Z2EXfTnvy4=;
	h=To:Subject:From:Message-Id:Date; b=aa2HgWjA8Uzk0UGuB6qW/AhUSsLnHt17xD0qv6i7sYqX3GcDyw4fQ6JtGGYE/g73eYCFE4pGaX9eYjrWfPEBfzkifFNF4+HZMuocGpk0lAvwKZyPR6gpTwPCBFhAWS0nM5KxaBmOJn2jQWLSikYzut7RkNlEmNHI5rRVIdU1hBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkO4su5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkO4su5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749770393;
	bh=3iZtWJQYPmDqK9KFuO4dJ6A+psmQeJGD8Z2EXfTnvy4=;
	h=To:Subject:From:Date:From;
	b=OkO4su5iJUADswdbK0JR7BJlM6nK8bBCKoRGCV3Rnd/e9MRjBYpiQb5T7nEj3Dw0R
	 eCTSPxwpPSqmJSZhP7I/Czx2sGWXB11STy0bDb5VOA8wgbgjCtuwHCJtMISD9VowDM
	 5AgBaFmzJuApv7n1MGbefQzpvVFX8o5O8cHEno6DtrgwEpjp6A6DxTbpmUIac8wjrn
	 z+a3zMS8p56/b/viuuFbj50J3ZJAeVlqxbyHLomfb//sw9enZjv1+WUSavEQ6mgpSC
	 POTADV1kxaJBhtY9z470GEMi2GM25pNElBR4GvITiWdFMA98+jMTCf59jbRZ82CQU1
	 5EX7yCq61ZHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93859C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977039358.20809.1645368196477119848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8186ada3803cdee20c644d9e4e78dacbd74e2c00132f7b9a701df53168cbd50
Date: Thu, 12 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749770393
