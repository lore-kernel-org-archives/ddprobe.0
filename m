Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97AE3009F6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770373433; cv=none; b=DPEOCyIZP19LXm+narLLaRUuAG82SHQodpk7BUGfQa+yeHcAEijstcWwQ5HRG5PWcKJJZ1GFJ4L/BOEjqEDR7c6eOnVl3Y1AJxShJd2ZXKJpynSc8wkOGc6yPXxYYsVkm7BMdjyCCjIBjCL/xPzbNYku7NlsAcQW5UNFuEVHkUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770373433; c=relaxed/simple;
	bh=BUEMMf0qgNFgYCowVEcyIGg4mgI0+fIyj/7Ge2L6qOs=;
	h=To:Subject:From:Message-Id:Date; b=mefnTFrA7fbjutNEbjuCrKlrtsqkFDitQto7d8Serhn4FRbw14MU03HxXkvG7TmYiCkVb3bKCcSiKzY+qP/Qbrl5oQfMJVcOfevAWmx2tHFzqi2eC0K+j9SUObjuwwE93UpCEiwskxUmKRsuCL+rCohwYJRXj/xeVi+khq3XaXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDeBrPMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDeBrPMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A748CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770373433;
	bh=BUEMMf0qgNFgYCowVEcyIGg4mgI0+fIyj/7Ge2L6qOs=;
	h=To:Subject:From:Date:From;
	b=FDeBrPMpO817dzSz2CiUvFYO4UTLXIajIbDGkIFVcRECbfZr8/54Uv8TuNN0bRWcI
	 6Do0V8k/czGXUGthgmB1Fm5rzyE5Tz+Lej0x08uxZyC5TEQcTz6tfm4gr7QlWPrWgO
	 8dm1QCGUPRT1dbPn7JqZFnZHoyQI7QUMB17M7nXOBNPbPdldwUKybq4GtdRoXsEFYK
	 3EN8HuTD16sMf4ZYL0UpWQQZMqMllFCZ3ZuhdVcFF73UhScQ10HlT0cD8TyycPNMvn
	 pEWNsIvttkFf4OZI/e76v2I6c64JwKWtspM8In7MKm8l2X9H6Vuhbu5WPMSC3WMuFg
	 5M7Rp8V53L6tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383AEE2084
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037343359.10075.1066518910331712199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf50a6c486303e51dd93944b4821ea5e102ffbfc970a1342879f3b3acc91571
Date: Fri, 06 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770373433
