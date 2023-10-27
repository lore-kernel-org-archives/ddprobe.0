Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BD13FB02
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYROo+Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92398C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698443896;
	bh=YuSaKa/wAV3fZd96eQOYT4bv7IRYxTbZvn3uJcBMVHE=;
	h=To:Subject:From:Date:From;
	b=cYROo+Q/8cO0DCwbW0eyyizhoVJk6a82MhISdiQCp8UGG8RDlfJZ+c4M/EjxGpZAh
	 +DPF048QJ63KzTcZcUXQ34kNSy1F/fNXhOgsg0i8aM8XEV4SCgxeCfRtbIi//jZBGq
	 tKcbtXwhaY20ZZq2/YHxiFilIo6Gl6g1Oql/Xx+PQMwMlCTGZYEbnKmW5Uzm0zkoNm
	 qpf6FJVX7ueeDNBtlsQWu35qawfG/JNtjr6K6CUYZAZBDKCtsuHfSlxl70vB1v48cH
	 lN8v3FnuNzDkUEl64iCiMUuBH+l8aITmHk166Nc75BkbId+DTrX/XOqJvR5DmoDh58
	 MxwbRHrYPTB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70155C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169844389644.28827.6132743115177371340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6848d4e2f99b4738aa1bd901b00938369f7a9fe2ce8332ca2d430ec5f6c4268
Date: Fri, 27 Oct 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698443896
