Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B6D1534EC
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749232794; cv=none; b=sxj9Gojt05Yab7VEPB9pImARQwRne9348OuGoiVTOdZ2Q7f8IZMK6uFPCFsvrGubjKvJkVWDl4oHv9H4OEMJpkXHkvTMSyhY+gNTizP+ziuZM8RRPtc3X+QlkwJ+7TiK41HgF/ufUkxoC0YJafed/gfuoMvVScLOKkEN4xRijoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749232794; c=relaxed/simple;
	bh=/6hK+Rv92V9nr0AffA8UbcMKpUV8NNdII/jda3UlWts=;
	h=To:Subject:From:Message-Id:Date; b=u20XpYHEYgLpKyTIDFFNA0lzL4nnvuy4Oaun8lbZ1qjVbPI4FqM4in2RtVD2qvTlGN4cIYyRnMqPQIGtUh7ssHQP3BLMoIWXzvSg0uR7tSH4hhj2ycxcqF2RQ8180JLxCh/90A5xU5+Pt4q7Bisc/vBVLFts+rTmArpz6OFPpOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNmcXTfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNmcXTfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C90C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749232793;
	bh=/6hK+Rv92V9nr0AffA8UbcMKpUV8NNdII/jda3UlWts=;
	h=To:Subject:From:Date:From;
	b=BNmcXTfPYjIri2C4q/6QpoVZ5A/g2KxhxGIVYuubQS62OmcPhZuJLX1yn++h26QAe
	 z5+uLiXm8SJGSiMUHdf6lKSCCbImR42AgEGr+9g4IaX7hRLGGCvT0lT0S9IFjheK81
	 HM/2JqRmhIOzZi2wYbeO0OxkKQ1UCFd1koPhY8enaFJ2PQjn23FNL1ljDWO8gFSu7u
	 n9rsfO5Zysb49m3pr8i7OaKfbymJxBSIN5LSc0OliAqdu9lHhCqpjW9VJ+65ALjwf/
	 Fxh37GJg0BrNEudwDaVtXEqIiRKN8TCfncCNBXp6COXfaryKhFYFz39X7z4YH+2h1N
	 nAqHzjn70EJNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A14C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923279358.19335.3734680401399737136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3bc9e4ca6bc0921bab8891047f580756fa990afeb2efb49f979b589199d078
Date: Fri, 06 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749232793
