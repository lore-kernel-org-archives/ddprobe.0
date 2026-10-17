Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702D75B5AB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792272034; cv=none; b=JsDINT06mgF3JEWUFh1k8RVMu29wW/konrCOAQUzbpm/qOIbdNmuhGYTTWf/9uzmXLPB58mB8Pt1/pN6S+6kPYLz08Q65w8HhW8WPls8IqXZCatUVrN7kWxIsv1P9i0JPVC0YgRXFhCS/9q35x+7gCycEkAEF6iNTPPmRBU86DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792272034; c=relaxed/simple;
	bh=+LLwxo5w+B93jmXhb8a7rQgM8Qk/9lKU+TXIfT/gkCI=;
	h=To:Subject:From:Message-Id:Date; b=lePOEqNJ6QAW0CfN33z/2gNVKQl5rFkuUliFm88pBrbbQ2wq3HYYfxm12x1rkct6r4yfCRON1zk9wzVIcnLwvZITHm731Q3r1PaowjXWkXS+zRXARLSbFCeMystDgZ5SMz4trHwkHdlptrAUIz5hhmUfJlUi0btuN31LjafUqvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOXcyOj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOXcyOj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28F9C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792272033;
	bh=+LLwxo5w+B93jmXhb8a7rQgM8Qk/9lKU+TXIfT/gkCI=;
	h=To:Subject:From:Date:From;
	b=tOXcyOj+Ny6tL6FLr30XolVa/GGbfqSG5E4nuKqNu5VdLTyNDqWdaeNCZddC9yptQ
	 /Kyt0NT4s57qNJKPm842sl7JsLQKwA/v4fIJ05J3rYUXFzbWYnkP0uV4a4jCmVrono
	 xg/Tbt2Fx/GwQBavM0fIm2m7UdVaEBPLPf+vMPr56BUg9esFQK6HtJEEBkx9VhfU6A
	 WEafSaT4fjkZzOfiArisJR3lL1rAAUo/uLHto4be2ij1PUpJYzZPqDNPzuXeQkI8Ee
	 23hDEpqx0jJXR9M8EG4PvgVelkf8lbBKpsIjez//2ozYJcXCNK4xnk0yOuuagO1FSk
	 VOvvBWe+2VjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE57CCF2CC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227203373.8950.16740582194777482219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a554611fedb2d55ec5b1fa7f65674507ab3a585783fdd3beb7a68a9a79bea145
Date: Sat, 17 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792272033
