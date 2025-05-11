Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FD4749C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746929394; cv=none; b=teo5QhVO69Z80Vybibm/KRsinrMorCwB7mK5I+Cgu+fBNtcFQB+rFB6oPxCaO8g8PUoMuo+ImNUnoTCC7LXlKyAbmv8fIm2o+Prt1V5jXq5exE+udHkAAxf67GkWKzHAAC4ebFYb1wTwzEnw7EqgKSdLKpDINC12MrIsokcrM5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746929394; c=relaxed/simple;
	bh=8tWXDUn/UezKTMicYK7nUPkY7zaBJnZ5gGLfw/cyHCY=;
	h=To:Subject:From:Message-Id:Date; b=jtg90IxeQCxs5M2tdSM/gqkvGarhLXgU1J6z59b6uv0r5m/SY8FMFNe0ZURWFFASo31sHjismLhsIOD2OhQcpuDFw9ubTSYcY+X9wqLUBKQVlfWsNjDZ5P9Jg9bgW4Nl5QHwQCbgE7WdAe0T/f0UyoUAjLTooR/IRdHR42PM3oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD3OzE5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UD3OzE5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D771C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746929393;
	bh=8tWXDUn/UezKTMicYK7nUPkY7zaBJnZ5gGLfw/cyHCY=;
	h=To:Subject:From:Date:From;
	b=UD3OzE5VC9qi6ok8Sw1grv+bvq6lEoYQtrjuRthiE6AnvpWQ3YX0LFKrWSJsxZ3an
	 Iu7byKZgROXDJ+/nuyxfBvJ8JskIVUKDcY9zmbN33qydG+250k9cASxGyae3JN2c/L
	 khmHeAA7qs5frUl5U5QP1ITTZ9xnQyVIexfErUq7CmP9yp/Cj3E+qCaRNtnLmUGUNx
	 zSejC5zfw3SZDZbbDIbccvY5ZrTTUgJi45Qh+E6mPheUrqMObD6vF8q7efNRAtp2rE
	 bqiCxMSMm/uOwnSMhyQqH2PIIkUg1dCiDTv4TLab02oqEsRfL9ZuMzXGoagqF6SVz5
	 DQ4F4OsY994MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB47C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692939357.20700.6682977575536066687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e2c314701c2367c6468ebad25d96c2944243fc96eae5cf6be138ab140399b7
Date: Sun, 11 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746929393
