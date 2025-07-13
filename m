Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2460119CD01
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752413394; cv=none; b=R2wRVr+S27puU7cAuJXNHH97cRARR73c/KfTzyOm86Bqj+KFOi+zMfaLxcT5K3MOWR7Ift7448cmCpLq/o9bGFlKSasJkjKHRYD4enF1ipgvIqATuj66zcejO97WkD9oEeNLv9wRQpoGMGHDJRLzMqB4PRJdWCHWpHgtGMSXvdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752413394; c=relaxed/simple;
	bh=C8fMYbOHmAkZa8Q09+g231hE0V2lwM3EhfOTsq7u7Yk=;
	h=To:Subject:From:Message-Id:Date; b=DUTDAi2FeplTKlB83WxKAFHM3K/QOF6M5mXdOubUlJbKTv6WUZds2zKdhskBnCZAA+mJd5ZJxflFiLknsoWDNyTq+QleSocp4zbcG0VDm0kUXoIe2b5kMZiK8DLiakjB4BvNM+mdC22psIkf9jnM7v3bfLNjFvRWUWe7RrjJo2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIWNnHoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIWNnHoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B58C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752413393;
	bh=C8fMYbOHmAkZa8Q09+g231hE0V2lwM3EhfOTsq7u7Yk=;
	h=To:Subject:From:Date:From;
	b=mIWNnHoGTYSMwLMR8h1StdDxesCSliaBjaKlPr3w7iCl2wcUgXz0ug8K95gSDFfGx
	 nsdmj0VP+dBV/CW8aJ4BoO+dM/Jnj65puZqSf2/4iFgLhSCWqcU0toc+j4kcYjPEi/
	 7W4YxHVTogaIEshNoRERmJTiqyOl1lx7wmUsRA/krwbX7vw0L0NF+8VBqJe179E3ck
	 qIZfT3BhkZB1uXkjcfyNq0Gjr00qfiJY0bg31UGsyooyiz+zMRslZmTyx1I/IvC0UX
	 CCXPZDTTI707rzewXCjlkHq2GpEOCSeApCt/7uhh9V3C+MAzzmolj5B9H0otkbPfLu
	 2F30QMclJBe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F2C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241339357.22318.7692930736792510513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02500ef98d0dea6f8b1214857f1908339f3e572ca24350db20830761b2208448
Date: Sun, 13 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752413393
