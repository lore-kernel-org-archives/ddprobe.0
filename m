Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595C3C414F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784534314; cv=none; b=Mj3pZr0j2y6nGRrvurwfxqP+6h4BmfcJ5cTvjBv6oaHJHP6kDbf8k+eiHuz/M6cYJPr3+Taac3P/d5LmNmlbTvG4Z5+9GTyBDp5ewI6JBtLNk0w+Uic3mv4+0isr5MVZGqANjrXR+k+KGZS220fjIMy0pRoWrtwlO/IMugdbhGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784534314; c=relaxed/simple;
	bh=EYKComSfkZJ0bmSK0llkMKjJw97Nz1/P/vsBtTNXDFA=;
	h=To:Subject:From:Message-Id:Date; b=kLQOlUCYBQHBDrJYdFIz/gubZPlTquU92GbNnNId+v/e6oP2lxVN2Gr+lFEVriAMPjY9wMsuoKVB0AhaQ+b2NzCh/wFsQMzerlBpxSoqJ8G42UylRke3o1R5CSTWDDW4n1949w6w7IDt5BvvLGYtGG9XrxOsv96/JhEr4OWeEX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQmsxUhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQmsxUhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79E4C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784534313;
	bh=EYKComSfkZJ0bmSK0llkMKjJw97Nz1/P/vsBtTNXDFA=;
	h=To:Subject:From:Date:From;
	b=cQmsxUhRfU/qdS0Nao9CRVekKXsvzCDo0qjKH35YkdrhJImjWOsK90KoMFdl4U4tC
	 YXe9D7JreihYE1DPfdsu5t2jqp4XKcXNAOhVIF593N+JvwYo6PIp9qd7UH3KqnUKtd
	 q5OX8RbrrozThyoKzCDXHBYq8E7+6NtbsQwx35QkeZmN/pqw1h8lv8qeDQeFr3i6PD
	 GfT7xj+QywnT7wcbrUQXouOv9wr1sMjFmsq8if1DtNjJrcct1lK1egTehpdfyTUTQ0
	 9p59bW2lYnUi2KQ5YI0OsKUPx9uENrdZKWjpnQNneAv9HAzf0LeoHPhhegBef3bztW
	 LUDstKNmh9IHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E78C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453431372.19394.10362442044973289805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f342173aac27fb4efe4cd2786f04b5868ff2b92671d6492f89525780172234
Date: Mon, 20 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784534313
