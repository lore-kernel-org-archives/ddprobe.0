Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ECA1E2613
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746998394; cv=none; b=aauTc3S9o9mmNgHJtR8ovTcjgiVAeogH3/9YsYldavGaBQbWuuKs5hU0KQZiLEdAkTMtgTsOI9IwCpGi4ilgPdfV3ebWSmPcVIyu1ZfehpOoPCYTuqvIblKkme0lbLUy3l4zJrZjH7bEXC0Iopj5snIWI8FOKziaM9Mm3Tz3PC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746998394; c=relaxed/simple;
	bh=k/HRW0bPH70tg5yh/YTomntgggU5Jj8NhPKb5b/bKKQ=;
	h=To:Subject:From:Message-Id:Date; b=eW1BJDgyDUQ5yB56Sls1kDoKtM5Hf8kXtjCQuksot1rE8wYpT8Ya+dTECNEmirugtGmJKkXl5yoFIqXE202AwbS0PQpaJ7GhVAXVtWwUnliXy3hDgx4yZT3P/SuAjVAyaL51HW4uQtRrE/pZjg7UB9wd+3aTN2qymjyDY6q/jAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOmi5oTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOmi5oTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E7C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746998393;
	bh=k/HRW0bPH70tg5yh/YTomntgggU5Jj8NhPKb5b/bKKQ=;
	h=To:Subject:From:Date:From;
	b=LOmi5oThpZU1Ez8bVAeKaA8dhq7vQwUATODSN9qJ/0/WALafy9CFPnnNhiRlGDYpU
	 3Y8z985xnPZHhLGOcWoTzCUwOrB71fCo5DhPkD0bYCj6roJVtrphck8YOM9a0PniGm
	 skeNYxDi+4CwT4WQ+w7aFf0V21SXRzf49Q+MndGErgLfbCVrYRnMn7a8i2oXhaSkRg
	 exR4f2RguH8qVWjDoDl9zsOojQ66wEeB2GojeOptr91oEba8APZqUqxoM+1sAD797S
	 rzGSQKQsZ4jLXgGE7ZaW+6aIxaMbgfBYNmsHxqurCY78Ah0B6qoNNVenmhGxRQGfgk
	 Lv+OuwYobcPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC56C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699839357.19471.13147396260203257888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247663c3801e618cd31cc1783192b4b08f004ab6cc0cda84edf8bb5ea73e73ad
Date: Sun, 11 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746998393
