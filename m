Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201B3B661
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763112594; cv=none; b=MOd2ENWNYl1XNpWoj8xLEktgP7oc/21FhOa7d7TIyKIzDz9T/fovrITfWDaDJEBlcJ0sAJ5JioQxl9aZ0J35CHo55dLGMJ/bkxEMr+4T5g1wqUHZWFHgaVxSu0P/Kg0bmz0mbRyxeeTEjykMLDJBmL6JMolOD0umxSrksL8b4gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763112594; c=relaxed/simple;
	bh=rpgbWEBSmAFzw22sywesziUCtuSCdZUYNyIwTR6A9q4=;
	h=To:Subject:From:Message-Id:Date; b=jkgqQRPaasQMVua9HRTwbN3geagfEfQCUkBzi4kpnlW9J7hoPgrcdFt/1H/PNgtQ5ad+MkJRg8nQteCwAflhe9UzXiywbe2HSZkNPnRavIZatcL3PfjbeiJx9cNKZNfNDLHRuS+/dQBRqd/XPnTsb6DlYFrtGb+zxKI6z5YbugQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMthlTva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMthlTva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3541C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763112593;
	bh=rpgbWEBSmAFzw22sywesziUCtuSCdZUYNyIwTR6A9q4=;
	h=To:Subject:From:Date:From;
	b=aMthlTvaDJfEn1RfT6cvx4ztPUX8T8aGhcoE0qZ8OnGKkWT0rvkFcXoKHon/1ZGHJ
	 EMf0rh+zsdgDsZI0wskfMrV1KAT9/ywSNczX9sxHK+SwYWx+c5yBNRrBUDoS+h4RF8
	 qdVFBhXw7v1r6Q2LXS6x5+H0U24Y/mF9b5i5CRNiqqaciDOC//gf710VslVeG+6vYy
	 mFYVCqUS4ivlvRj4SNQcD4On0KVdUCJuZMcaOjtkC6raFMMwODgmtOSCQpsRxLb+3A
	 Qcv+NeO/UnOZbHdkNHmSdoIGwHG33QFg7trtzOzQGbQ6Y8rP6IT3ZUqZnCKuTNoG9M
	 3xeXMw6xTSGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94477CE7A9B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311259359.16999.5809647499838896586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7bfe8c4fcd2378413b201d090750138a037046c8df84bbba1fc8511810ce88
Date: Fri, 14 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763112593
