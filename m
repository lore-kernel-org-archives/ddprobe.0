Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BC11B21BF
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762282794; cv=none; b=BLFTAIgThdZaXeGhAqfhKvQUXXTrfrCbQB/PVBQ9IC+3XOO1ux4rCBNmF/IXGmr0JRexK0mDx/ESICTu0DA5QfLSA79/qNo22iy6WEHsglYqBQFm37rm0OGAEFOgKkun6+UBQmB6H6VcphoNWNM0yOSyGDeLZkImn93yr5C6v88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762282794; c=relaxed/simple;
	bh=2e+22lCfWV74s1JEKrCje4FR5eoGzAzDviao9M7A2Ok=;
	h=To:Subject:From:Message-Id:Date; b=CbXwbSK4VuBd0FXzubW9WRW3JWyxSdWWUSMXE+n6BcBtqqyDtLmop2s4UFuLa8h4UjXYdkSn4ukEEuzQwrZuHQIpsrlfgOSEF75ETT/XuGHpYAqr+B9uWzFTi9sZ9477aAv5uLB+IW1ZvdXPNkhFnbjzLOKw/NuuH3pKZyifSn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNFwbL87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNFwbL87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1183C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762282793;
	bh=2e+22lCfWV74s1JEKrCje4FR5eoGzAzDviao9M7A2Ok=;
	h=To:Subject:From:Date:From;
	b=PNFwbL874C2J2qT4Y/wkZYAnOcmd01b0YOK7aQPN0cpYaU1eIuvG33vXXU/r4PVND
	 sShfJ2EpW0BjQKar0dBj5J0Q7071ND8tlfed0Y6HKl5Ar+AC//fKcQbsB0d9xiMnI+
	 104O/MVtSjqyx7xwpUoGt2lujcnme7/wL+4r2kBSoNppx5W8IBXRum17yWwfNhjo1a
	 X7mNiBg1zm4Gm+4a5QHbe8q/E2vz/SRdpdvCltZecQkAo015ZJX4S1kLxqoKaGoQHr
	 r8VqTJR2jd1PPp6yBiS7xkKBb0rsCrw2vbtsGDwZwbB+uIrbOiKvYcmqxq1x9AQM7g
	 gmLMSS6zhGdqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91818CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228279358.5734.12915157852197874376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6071ba104c40dbef887a892036f665e97fabc087c0fa9198f7016944f468d722
Date: Tue, 04 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762282793
