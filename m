Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F51E6CDCE
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714987944; cv=none; b=H/5E8wPFNumkYUCVnoFxEQN9UQtIX4bk6aa/LlHePGmYME0HhYjrgKo15FU7BCLm7U1HQnKmDd5m+OKLSUQgz0UKxCwGCAhel32vjIkWGVoScL4XWGRmx0Idu4/PIqZpGxDlvPzAX7FnXGRHlc+uyZ1GjEQBLhrnyKaZic4YjDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714987944; c=relaxed/simple;
	bh=6hXrxZisN1QN9haaTVmOTvVC6EEn2FVzJ7aspqmrfrE=;
	h=To:Subject:From:Message-Id:Date; b=CRh+L0zKU90jeWQ8PBsxARjTgWmLZe7oXyghnlxFOPvzRoeIWMT5XbBUYHJSQSri1RX1lGQVSL60+pA1uEmfNkex1gO4xJ6FMO/GJsqppKvDMandI8cx+TBQLzNgclINuCSD5ScCddZEof1JUhZPzjIbcq8tgQ7OB7Yyh//tH9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU7WKQgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU7WKQgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98B1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714987943;
	bh=6hXrxZisN1QN9haaTVmOTvVC6EEn2FVzJ7aspqmrfrE=;
	h=To:Subject:From:Date:From;
	b=KU7WKQgHn3cp7+0jP9mIHCS0NSK4XFWZ7Iu9/tlT6jce5K4GClEDFCp8sUlDZlibv
	 Cj9bvebNj0fqTPrVG42E1CSs8+bEGDe28jrP/BeWbeu7IQjBntfQ8jii3qHfjFXxsR
	 euvQ0FyyyiPjXF1BIlsZy1i5NRu1WuxOd9qKkuU5oJIIyzkaK2hMi8/eZ/NAAIkRie
	 9RivMdfsNCNlqifvA4QfHzMbjfkFBBBTnpMlQo4sjy7ocfJbMmvS0eadbhRBkTK8+R
	 lyV9zxhtiKOatqK1YJqvS5DolGL8K5I8187CrgPMjJvlDvxpfJFIPINAPehOW5cXJh
	 JfWrRNyZH7NOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6690C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498794280.14118.16366112200737769789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baffe69ab80ed959d702c07d08423b6c871f7dd28381d0916032784131c3e82b
Date: Mon, 06 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714987942
