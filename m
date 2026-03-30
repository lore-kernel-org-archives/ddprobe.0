Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F0B2853F3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774902894; cv=none; b=aw4+EmAAmalE2DdDBebmoMhSQocDHn770lOorS13Ufdtjr6y9rQniWHEIlaOo05zTLIpM7DatxOsE/UaoH/EDt9nhoHjAaYXVpdg9R58Rxf00f57WLxfLtx6c7OzxVC5IHLjSITOF6V3C2ZnYf+U7yWwX1+WHBMJs6tSiTcygUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774902894; c=relaxed/simple;
	bh=Xq5iohC2VdOdcmbgwyx13dKesx1EiSoSsej+dMS/gQk=;
	h=To:Subject:From:Message-Id:Date; b=UhWGTmwBN/Z+mbRyrSQY7zSDO10juFO4iHjIDsM8TGK+1NlGRvQwej74GUQg9J2MVquFkC3N/JXbqDTmMpOf/kRAwPrdCHcdz5B+Z8f1nBg+91zW9bLaDcDrkdPBqspbxlLFtIVUrkXdQgKziQwt9sujDyCHblkHh01VO7MVr8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwOzRn/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwOzRn/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774902893;
	bh=Xq5iohC2VdOdcmbgwyx13dKesx1EiSoSsej+dMS/gQk=;
	h=To:Subject:From:Date:From;
	b=cwOzRn/w5lQzxCzXKy1Nw/iKh5slR3xG9xHxcULkLM9tTuD//vn/3avEf9QbV/3//
	 U2hOwcX2xwWDXGegYyRnlsY0HFwS09wWeTsVTXrN0AkFBUJr7fiGYyO4Ci+ASZ/CVt
	 BWERDeiznkkIjk6IkIqyZGn/KVQQg30e5CfKpX3K1M8d0/xvpGFaclWdawIH9M3UEy
	 qTwHoY8wIgNLGiAI+fiXcNvlKmpuPFRD4w3CeM9FXWoNKFZ4M4hq2Dc6Sn+HNrqi8W
	 cywHbtFMAxvN4F5rQZOqQHT5jTVBtK+5co0s84/eZaFY3xUcAyTTIfXlZUjkzjh7dF
	 Wker0ehkwfCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C291061B1F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490289360.12703.9610500790390054613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e13e3bccc6b2c63bfca7661d9cfbc7439339365d31c33e3e9d649f2e00d7744
Date: Mon, 30 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774902893
