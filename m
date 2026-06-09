Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472E22C15BB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780998874; cv=none; b=SDqLChRKoWSOiOBF7nmOOEWtJMeUjDfEs5BDbUWXj0EW0ddcndEE8U1+h9WtJNAzbBoUODxqRN/Nqwf40eKjcBNMchjW0dDJLW67QE/fdLB9YRtkilqtxQADC8tamYdCg1KYLB6OsclAe8ybv9bGa+YvWFsg+2lZPGgetusS53c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780998874; c=relaxed/simple;
	bh=mSuVmAVy1ok37JxL5eJ5kwKCZHOWQczjPGdNEkCGhQQ=;
	h=To:Subject:From:Message-Id:Date; b=IdIQEYp5yr2jimK6ieMmz6hW9OsT9eWeNCh2jeOi2DF1CrMnwUvekqPrvMz3RwSlZ4oIkpCYaVDTX/xbt6nQQyKwYY8nb7exK8iRcK9ymEo6EVvQ/x25ExVrYr/WDuKaLyeWxHyJMdoMoyooCt/vFaFj6n0Fo2KlYwXdzPSn4Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG9uKFoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG9uKFoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EC9C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780998873;
	bh=mSuVmAVy1ok37JxL5eJ5kwKCZHOWQczjPGdNEkCGhQQ=;
	h=To:Subject:From:Date:From;
	b=nG9uKFojHHbJlr3N7uc9kRk2FvfS8PJM6SGJXah4T7UPQ9tg3BUAoL3QmbJjdhotV
	 pVYVSfffKIVSkSXYr4Vp23sISCHnQ0wTCcMxUvoogrsZw0glQd3Nr3uiULZaeHjUMz
	 hHSp0pJXYg0DaHSjHBb4nvVncZEgKHCMDLPHx6pDCKWo6J2NbQGwT0u6EKTwusQBT5
	 dhnieECzqItk3Z2suyJOCkW39mPjbuswcYXLOVmbJOoV/IoeMFmS71Vc4RkeWAqOnl
	 fWhS+D4WHkS2RcFbkEmpdcDKf036h/lqZVdPdb/TsLTzn3KGUCL1LX/5Z7rw7/W1r9
	 lfqwld2hV7UTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B93CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099887379.26034.1970862314800088693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cdaba807465a092bc41862e87667a99dc25f6989eefe8364ecdef646100a091
Date: Tue, 09 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780998873
