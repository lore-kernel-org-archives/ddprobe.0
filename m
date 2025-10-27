Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F3529D269
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761545994; cv=none; b=D2qB4mrLCWJKoJULAjwdw2IqWyORTKDXY9R1ZIDhxsYOxNIFSUOabIFUdfBrBhrjMcinOsQG768W/ZmoUUKHS4y3w9oCPmki90j2t/iG5FZjRLRsLzNE63kxhiBinjo6TVxx5A8mVraqDv+uL+DLg5ZMOpWgW3aKvdXT/qSxfyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761545994; c=relaxed/simple;
	bh=qNoNYa2Xhe6xDwlLcFcBMAldbv+3JCgvVlDBZdTW4sY=;
	h=To:Subject:From:Message-Id:Date; b=heWhzQrMzVaDd1CDNwFOfvMm8K146g1KR8ETRGqdQngv9vowh8YOoEluWnyG33tY7LSt0jMDhDlGbf/YklyZouBtHi1wYN1jUjs3zSV9QRJMFpItPSrFMI/mgbe2Sd5bndXa7N7qD+RFXp13b4HQXrKVXuJKHrNaUws+QR5pf84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/FNf3Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/FNf3Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761545993;
	bh=qNoNYa2Xhe6xDwlLcFcBMAldbv+3JCgvVlDBZdTW4sY=;
	h=To:Subject:From:Date:From;
	b=t/FNf3Ue0g0a70Q1VqZWOq+W2vn9NFSefLOsjn5WZcbM+gIbtF6FxoQELhyjZRgrd
	 yytdmoszqSRqmQnoBEZ+4ZwkR6sHpfSPtfbbB2IP/plZwzURvxzplg6hc906hcuPWE
	 K77eKhyQK1XFBnQyhBrtsqQ+OEn6bF5mTtfOTIsN/U5tI/uMgQsdfjb+sfh2YcBvoV
	 7s4OI7F236jtLc04FCIuLeXpP0ZxgZcta0vIsl1QfURJc8caZuBU/9HjU0jhVIwxp+
	 ud50MZxEwEnu6XcgSdrE0tMh+mLZfgs1rDfhQRUJP4OhNdC6JmJ9atBbFrYPdK2k5/
	 2AkKu+iIkCfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90389CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154599358.25339.6222550516683267972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0c979402ed7dbb75b7313c718f15f8393b4092c501da532962e34dccf93889
Date: Mon, 27 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761545993
