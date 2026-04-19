Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8C729CE1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776593854; cv=none; b=QbUnKQCCBw+L5W3bepfRUJTTUr9qeuGNUNMrCIz0mkVdkN3oCsbgMrpEeaoQL4mj6v3K3rSTVvjq9Q7FtoQPVgnExkYFkUh/EfUbPjdANKLJbIejEaqdDcIimvnl/lOfwwFVSWqIgKR9t/uUOTKBEN3xnz4G2iwXH2JbJBSlRk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776593854; c=relaxed/simple;
	bh=HmW+QIXnz7MFwtf1k9gb6dTP2xV6fvEcB9T20kTFCJY=;
	h=To:Subject:From:Message-Id:Date; b=D6rhKGff6LB1VXAEzMN96xtdRH+Ej+h4o2KU8sIY/h8ko1a/dy+jYZHxaYsG0/OlloL10D7VGqseEtJgxDP9INGpBJ/hUr/8qkJMit5QNim/hMPocLIaFWXQFdBEuEdlX87nGmKcBVe6KMcIDWTU0IoOZhjm0n3WxqvbKx3yAN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSXA+GK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSXA+GK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0C8C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776593853;
	bh=HmW+QIXnz7MFwtf1k9gb6dTP2xV6fvEcB9T20kTFCJY=;
	h=To:Subject:From:Date:From;
	b=ZSXA+GK8I+60eRD9FDRaQSTSqwPDiUTBQ+FJFVDHzaTs6e/B8bnjPIvZ/IBZGc/nr
	 4kMYGp9ceCVTfdgYSdUZgtBGAVTY6RPrfy//psSceBAAthkait/8CMTHW7XzJyq8hE
	 mzyGms0+ybU/kFxyrNWx5pPLqjgIe7R95T9kRJ7XWXcaX6inf+vGQ0+LZour8IMYRl
	 nA3bhJuahXhNYXDX1queiLi+sLD5YBN7Pg8fllTt/J6/JBDFl73APeJSMwELmplqa4
	 hsHzJFj1h+vYQTFvEpKmn/Vve4gQF+zRuH4QCNgncLOEQUhCqCRUc198YDq5y2lJU+
	 uOGs1Kw6p8duA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9439EA7195
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659385368.11371.4733482835483704168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab7d84c30c436a5ae212ad15dc527f35dc0bf9a353842183e37a3b5e4fcd4cf
Date: Sun, 19 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776593853
