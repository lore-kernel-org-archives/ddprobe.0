Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD9B18FDBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772820294; cv=none; b=KHjj66n9+6firVcauqFZ4KBAQKTRUFG50/YPz2ImjiqZhoOE5gMv6oKlz2L4WvMwpI8lgQ5qGgt7qI2yzD0rue8EWrZa9h/s+1T3MvFNFr773HqrRfkpGMBXTQM66nRAXGixctJSo3dWDsdUuMtBQE3fmt+pydkfHyqHWgJcNYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772820294; c=relaxed/simple;
	bh=PWmUUN5e2uJKMUNhyTc3tKVWKZhley8UGAa0U3ZDEwg=;
	h=To:Subject:From:Message-Id:Date; b=K62wwIFQaOMIdO/nSFUewp1AcjLQ9pivF7SA4n6ZTIcfYNIkBKrBr2lGlOLCbx0YPEAhMTfVqLWwiLCjo3r809FQ6lM8fmgvAd4jiRSzKvjuX/6koGVrFj1SVI8ocRHpLI6lLVGAHSHwoy07/348Y1yZlQ4ltOFDybfIaephUvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyqYxkIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyqYxkIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC33DC2BC9E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772820293;
	bh=PWmUUN5e2uJKMUNhyTc3tKVWKZhley8UGAa0U3ZDEwg=;
	h=To:Subject:From:Date:From;
	b=OyqYxkItuwpdP87zVqg7OJKTqrb78yNFm8rC6u4Vl5bDdpHWewq8fL7OQnG4AqR+d
	 TM9c0RZ41FwAHsYct5YRa6kvmVAWq0WRrtHVSLsfs1PL9XvzE/TIyR9kdE9MqJXn+u
	 uZGt9uUXOfTF09EOBB8I0zhqKwAsc4MsmnLP2TQZx8F2bGPUT5rBal0ShfNm1xQVD3
	 Op9h8ZvhYnObffHfnq5Ey7Z/ah9kxGiacQU5lGEg6Xpskx11AqzG1lrBeczKIkUBeg
	 k2ATOAuBuveBg9vvu3VLT+5lQKcENF7GEaWSDMd2rM1gha4GUFfSClwgzt1AVG4ptx
	 qqUTlQYEwsqAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96877FCC04D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282029360.14983.16801750785648669035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35620e84b38404908de6cac36495fbfc6602e35a5839cfc3390fdfb6a6f9315
Date: Fri, 06 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772820293
