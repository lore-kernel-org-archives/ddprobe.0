Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418FA14A4C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736569554; cv=none; b=VCF9xdvO7oi4rDXHk2G8X+Cd/5Q29gIDcqlEecwhJK8cxYxlFK04wGQqXrbaBHUWcMHC242xJklGNgvWfFHle5cKnreDoXKWXCbsuPDM+N16VlILzDs7A6+IOP6AdkgY0hY/N5tN1KRgsI6U/OlWNclsDuWdiFZu+ZHF+jPC8Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736569554; c=relaxed/simple;
	bh=SlITDDt2jjNcNnpFKP+HeUBw4icyQFyUdJb2d3P+9i4=;
	h=To:Subject:From:Message-Id:Date; b=lxKJxnlGrbnXul23I792VLhzp/Gg1orVH5DW6SiQQQaLTar+MuFm/pjUvJQUiAMhvUYy+dQWX9Y8G7jDf88I4Di84lZVz5tYL3EMXkR2RI7F25VDDlC54uA6ZDBPP4hvCfkxJvCG19JuQY8YQk207XJFz1esau2JqKoO9CfvOYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRgEpTeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRgEpTeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF2C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736569553;
	bh=SlITDDt2jjNcNnpFKP+HeUBw4icyQFyUdJb2d3P+9i4=;
	h=To:Subject:From:Date:From;
	b=qRgEpTeGpT4qR/mrp/3aoNFETpLZgauizSZp98ic5tlIXg5P5NqiRMGUKbDfDaz9Y
	 cre8b2ACE65YkIpklWdYrNa0VOryXHrbskEdoeKIPkoE3Ekdj8O5W7hFm9ITtnSzBb
	 pByMz/IcfQtJF3jh7EgFdfZXQSV+0Bp7c4Xv1wgl1NfI7hrSjSbyjVOQDgL8qrcez6
	 /t2JiIXpfNuxt9nyevRmJR9tZfx3o763+5acGem+sSs3Jg/3kWzBPoV5x/+G71SwG6
	 TN9acGQ3it3CkSyEc6ZfXwXtmaHTuSQOHATjL/8pQeb5c8aXEuPk3UzG/B3aLNXnSx
	 OUpFSSBirq6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F7E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656955359.24620.8858049846812141470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d886bd66ace850b5c25d1141556493163d00f7186ff40bc8f577c2415894006
Date: Sat, 11 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736569553
