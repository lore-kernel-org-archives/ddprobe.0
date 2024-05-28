Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619E517E8F4
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716890063; cv=none; b=uzCZ765NUdQYnVg6xa4rEEQNQxnRiMWej8cqnZ9TlyrgDPxC10aBZWYT/63EhmnwVraVgL2aoQdvKk0NGa/aRNaBuxQ9OnyISyUThCv/7Tz7fbGNcpzu6SFI4GPP9gV1VfXDX9fU6IJYSGyvjE32N/6HGeShVUxfpDmiCHti2fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716890063; c=relaxed/simple;
	bh=BmKjvVfnQ341ZHa+P/vG0mZHBA2LrL7Nm0bNHpbyEXw=;
	h=To:Subject:From:Message-Id:Date; b=hj0sm2DIUq10hN5tDQsLz8ebH15wNCgHYcUrN9b613SrJHXU8nfG239MTl0YtovEDVRSgaKKtOJWOTX/WLCGUiuqgwd5iVGKoyzaj602Ab2g5P/Ma9GviEt7iaNTRFtvt9flgFs7IzykBm2OzCwRX9ZlRZT9zzE78+xcUAg4qNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEiJEqwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEiJEqwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716890062;
	bh=BmKjvVfnQ341ZHa+P/vG0mZHBA2LrL7Nm0bNHpbyEXw=;
	h=To:Subject:From:Date:From;
	b=tEiJEqwLedtHhX8FtlCbb89f6qKXw2qAG1uaOJfczQleZhtbmNKVHB4M2OSIcDTDT
	 seVoyeX/6/MO7S5Ow3b7hrcCf3UkAkDiFxYNjjXif2pCd4ON6b0wOAQuZ5SZWZpSJ3
	 Vpmb38T1y+EO3gYlXYuhZDzH95wBozKwh77h85VHBfBZBgX/QIxNaNUTOC13eshZx2
	 PG/oH01AOrd3K5SHQnCVitNtjVcGUClDUAFE6W/DhsHiv2xUlKoYQ1PQMc9rlO8/Bw
	 BgXfplB4TQr17lowfJvPgDuoDjNlGh7/CzpjpSTffoe3btiWSZ1ypNYqXffjmdTF86
	 UJhckLmyDCTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE78C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689006276.20858.10556161340617724634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2c7e90fd36d1a7c53e3e36ee1ed2cb56ff1e05717849e056370889f26e1259
Date: Tue, 28 May 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716890062
