Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1513C219FF
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709548097; cv=none; b=Jv2JAMwWGQCYbekQdo/wBdnsQdivbTkwNPhJtWvqlxtqCtk/xYnid+7yiPEQePDWgP5xbXZLGEj/W2+CuObbem51GVG2jxuoAHsmRUguYaS04tcQdNjwgJghGccsVZ9YRFD2mcq4kj/QummJ2XRrJvdB5+74FdvQhEQHyGKCR/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709548097; c=relaxed/simple;
	bh=POTy5JtNy/zllpPdHlA9kEGlQMnhz10Y3u5k5xPuHOg=;
	h=To:Subject:From:Message-Id:Date; b=VToDZ+BmFHF69Uco/dNQy/lueWoT4UVYpNJdW4NN5K6KP9NZo6UYLPcGdanbC7vxnzltt79O5nmC+XIQq+vStq2Edd9ykIEx6uJaOJlqqDYpkhnVDc6qvvVp5qfCQ6DOne32GJz65bH2SQkTVn0lprMPLdRIiYvMM/bEz8wpdGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TahBYiDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TahBYiDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887E9C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709548096;
	bh=POTy5JtNy/zllpPdHlA9kEGlQMnhz10Y3u5k5xPuHOg=;
	h=To:Subject:From:Date:From;
	b=TahBYiDCndigmAPeUzS8lv5fQLSFgdXWlAZDbU3ep/lmZW8MJmnWulpETJ9XKcAAr
	 3abNCRVgzpTc9vZRhHUYiLV5VIL0RGERp/Vzbn3f6bEmuqADWBwoznqIV/zdCuvAN2
	 rGgc8yPW3K1dNzuZzp3C8FtG0Y73Ffvlfj54YuiXq8NfhvqJSYaSK4CbqXnnW5bvmG
	 XO6FOqDd4Wj2okVj0awtT4zOfxW0C7A+sWGjfMiTYoeZPFN9Y8MM9UwOs5rSSFK+Fo
	 jCkB+8DlAsp/OcTmI0XRSe4O5OSIrNrF5/9HGYTaOiiCujakOjKk7hx8Z+ppyfIVNV
	 qEZMeyeyYd7IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE3CC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170954809643.16001.3395592471470547355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef889df80e31e24a671ec6901ffb506d611ee3b3cadab7830f7408eb150b0f0
Date: Mon, 04 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709548096
