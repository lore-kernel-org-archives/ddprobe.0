Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA357E9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748281794; cv=none; b=O44fNjv5Q9Kjyy3hEC+H86B/areDnH8+6DYenVHGV3v8Ug0jhzTqgDJJg2O8pO6OmV6m4DrEq8UnmJjYYlu+1326tBpxidx7UX/Cp7Zj7clggowJT8dSgEWrrBgozGc+qnt66cgzmZui4PwVhaebDRMI7VJoIUPNAmxlpY+C8Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748281794; c=relaxed/simple;
	bh=pRF9gTKuOe0z9qMuL7ZCTJh3CnEWPDOl/9J7HPW/Tok=;
	h=To:Subject:From:Message-Id:Date; b=EXTyRuc06JCCz5ww0SK291Id4GNTUJCawunat1x54poTCM9pvM7pQwtGJSatrfsGjXLQNGXP8WfgF9bWYeVLrmyyw/uskA5ammDDepVfXlbW23SPWb+vBGQxfQCgaNMiHXLk1jumolviDTFTw0yjeg3YjVyHNRwMirp8EkLFX8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rfbk5K/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rfbk5K/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748281793;
	bh=pRF9gTKuOe0z9qMuL7ZCTJh3CnEWPDOl/9J7HPW/Tok=;
	h=To:Subject:From:Date:From;
	b=Rfbk5K/Lbb73mhYlcC8IdeRXUJBcj3YKi2eWzd4eecyDjr8CVTVR7BimTY1C9spAT
	 eRzcJoDu3Hvzzmz9hOjT0HI1kFKs29lQdhbiIn8cvcWwEQ2itLa0OeHCOvNH9Qh98x
	 1wPqkx0dRmZXwSERxLE1/NLHY4WL26RpyAe4t45l2HJswuX/nl3TRuKsiv9XSCsZxh
	 wmAqKbPhrBBX9SD3meywp1/xM/OVzswwnqWM0AxINcEZwpINec7EP4pbk8MVbW4NDg
	 p7xj8VQgf+Fyy1LIJjM4bdJV4MjbS0JFBA6lv5jUsmUny/pfuSLGi/NC+Nwg+tpM9K
	 QkGZH+jAwNqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BDC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828179357.11799.4379343107978732043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cce9b8712967bcb1ea5d9d9343b1c3405ba31ecfd9618c650172d1deb43d40f
Date: Mon, 26 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748281793
