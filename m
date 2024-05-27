Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B1014F139
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716809063; cv=none; b=kaWpe1/vac8maCthnHVaZa6VyScuSQnm+eM1tt1+oYQRdnu5hzc/xqv3ncEoNzDsD9VF9HWx3ZOTmX3ry6YNAcxBG/zjfJUGle3t96HyGIy0I8QL3LK13oETZrvpf6vGgfqvUiDhIsv1TTrn7FOTgAdAvVZMg1ubZboPNPz/DUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716809063; c=relaxed/simple;
	bh=+XHEAgDd2zoYnhOK4HRUxUZTsSoqZgr/PmfRvcF53zQ=;
	h=To:Subject:From:Message-Id:Date; b=kPbEsuP62oB7oMMDYs6d0J721JxASPpLi+Zc7t4GIF1UnXYKjGZxVn96Ipp0VWMNL7Oqv4Dn3x4TJ/HN7poSDwZhebNtjDGcWuNkFj5xWVTnuhnCUvfRmMLzgmzycuGXtvBam9NagktGEBgrUlROCgEIjBLtJ4+mJuX9vRZSZfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzMcZyPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzMcZyPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716809062;
	bh=+XHEAgDd2zoYnhOK4HRUxUZTsSoqZgr/PmfRvcF53zQ=;
	h=To:Subject:From:Date:From;
	b=fzMcZyPYRlbOptQuxBogeqhE8NiVC9wyVZkCDXqngBAHe2qIyCn213uDlQ0v0JPd9
	 pHh7NI9T6VVuU89Rm6lzFyi2tNSFAba7kZKF67QONPUhF4qo8A1U/hWqSI48dGurjZ
	 vNqFDQNXLr7HTJn6iwtIue/i0Q6QuwdaY1Q0sHjrwlt5Mqf+Eh0kHBQbJbloXww4tF
	 zqPrgkfXKAnDH3wI0SQo6+sKLri4oHqo6U2y5dDJFMpYvLrpzha0OjEWavUAQVu0U9
	 wDd2PylEOvdALXWR7breJ2/EgJ2PzsFjvtnLlNn9ozr86glE+VwadJY57v2Y5bUc/0
	 H093tvx4qIYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4E8C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680906275.19571.287822576151153081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f378625c17b303862738ab1a53ec409916e87115c8c523d5583217d2e57ce74
Date: Mon, 27 May 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716809062
