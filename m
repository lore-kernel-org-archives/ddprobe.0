Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332B23BB48
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781859994; cv=none; b=J4wgcVjz92banL5NvGKyRadSjLt82ye4dDa+Oso2ZXPj2jUJMs8pTFmKa64pQrvfY+Wbw88lCnVaL7dyn+zViZJ1aAtsNwg0Rus36yZCEEvxz4pCDQh2p8BgnWHpZuprpdt4vjugdzR0bQcBpl8LUxA8eyysGqcdLj5Nbtmp43o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781859994; c=relaxed/simple;
	bh=w41BoswpkduJwl24GE4+EDQMPlKl3GUQTOri/9NR6kY=;
	h=To:Subject:From:Message-Id:Date; b=esTgB2MIY1p5+xsjzslZlv7p/E3ZX36AwdpI6gBw667kOeutHxHmcmEdnF7AQAoOkbx6i7nsTy3VmkyJbqMiWydFQF4MiHbF7rH9cnaDLDs+8pkfXjcx5EG2S6VmPIOUBH+aq2x6niYGhg8j1LTbL3K43pLuL4a7TxQXXp4UcWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTXlg2O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTXlg2O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8B3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781859993;
	bh=w41BoswpkduJwl24GE4+EDQMPlKl3GUQTOri/9NR6kY=;
	h=To:Subject:From:Date:From;
	b=eTXlg2O2SgxlVBSs+bc+bDXQ/bGhJkUeFDIYfN5k2O2xTvl+oBY2e4e/aJC8kRVSt
	 LgjZHAiSlY460ijOgE/5Ost/HQZAuDiQCPF3dHpgw6FhAEXzuqZw+3LBFbwPv8woih
	 vGmb2uzvLnYcmUtEeXq44f+zQhStH86HShZ7Uq3B8h/JiX7CDplY9bwv+gAl5kUCNz
	 MwmT6Ph0O18S6l59clmFJAvfjRshyhAHw7k+fvvfqNnDUMh0uSkdqEFNMOUPPxjYF8
	 QSpo0PgztGt7NxmlSkaP9G4Fz4v6jQdrDX5OhNi/5p/KniK21bBRlbaOJGTCMxAdov
	 L8Diqu0pZuGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0755CD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185999371.26714.5789487542520973280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64445dc32fd3f1a3d3b84c8ed8c3477d2840cf26cf37446b8ef75abd5d76ce8
Date: Fri, 19 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781859993
