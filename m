Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A3C298CAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779413554; cv=none; b=t2L53QqKlX0J05nk33oSj78MegWwBBar4rhceYZoHRo7Uo+1aeorUy8cnq1ooW6Ae+pvkdOtMCpO9GQCOllhMyJooz7DfzSveNiH5BbI5C0iueIE14/MWs7haXmYFicC0/yW+UUoNZbuEjP4rbpB/duIbdCT5plSZDVs4Qu1+nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779413554; c=relaxed/simple;
	bh=TslsRBGRSSCHMoV/3BoSbc2w6Ua8CRXyJeNz/M3pQp8=;
	h=To:Subject:From:Message-Id:Date; b=SVusIU205nzOuL4FwEFIyOH8X3ICnkCO7OoSBDud/LOOALPvnalJhGS7geXnR7iXu9qTLHBxTxEuLqebVTK7ApxcMXxSixPp08/gaIVQGfrORBHPLPOYlZxAlCYoGiV/0z+LL2fF6V0zgarfsLSOjHTtf7fLcunpJYqgr5ZO5SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/CRBFUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/CRBFUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D71C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779413553;
	bh=TslsRBGRSSCHMoV/3BoSbc2w6Ua8CRXyJeNz/M3pQp8=;
	h=To:Subject:From:Date:From;
	b=U/CRBFUseOveFmqOUxhU3UDOCgdYV00fGoHKh5RQi4obdud5xXiapGrMIu9FYQiqO
	 6TsL/ZR0ECRdZDS/t9upXXLPXMf9IK26IKMSGqyrfeEgtmluk1M+o4G9ivG8hVAMQe
	 KQcgiiVp01dBdAnF0jDiYslZgRuRAxuf80bNvU9kSD9uAMjWBzHEIscLvpUPGK+/Nt
	 WWtwxWUtGLfWkXe9TlpidDd5YdRIVXiM3bfeQsk79IwGvm5KTdFefFvcf3zDEIbHTK
	 YZu5BoSgQ3uIoQkm5cLtAkLQjRjd0fakI8/uQq0KMgECyBmdq3ApvffqgsuPtmg57s
	 BN/+k0IQT2GRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87C1CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941355368.14659.6268079144471099636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3319fdc297bebbeadf27df7c1fe763c628e7062a2daa888b21300539f172775
Date: Fri, 22 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779413553
