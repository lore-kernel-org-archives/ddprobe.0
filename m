Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B48EEC5
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742826594; cv=none; b=QXKxbPo1W7EzzF3PGtNJ/T1K9Pzb0e6qgwwbRlMDK63QzpVOrfjd7f9NyJUalJthwCL3DDyAclWSm+RsNovYD5oTyIZ/ieQRwr93DdWxwI++u+zoRZ0CVBxQKD+mvZfABXPKkv37g8DjLhMEZikIil3ZdC61NoBZ3vDyT0WCpWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742826594; c=relaxed/simple;
	bh=YaFm30+iNVHreGm1Mf/qFVn9JnNhZBbTgrX8p3QixFE=;
	h=To:Subject:From:Message-Id:Date; b=tCp25LXHvYBSJqcVJQmGXrQRClmJwwf8GGTesB/4ZHNAyu9lrBNm1qkgbgvzBONLHwtD58mR5DJkB9xAKMLHo70KfOCf6lG0fCu9Xa2u3cuiMKW2M2lrqIiMfuzOS+XfCZvSbSETLaIzgHFD/PM7Uydm1pVyA13vHyUgxoFTXJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uacr7sIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uacr7sIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9378C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742826593;
	bh=YaFm30+iNVHreGm1Mf/qFVn9JnNhZBbTgrX8p3QixFE=;
	h=To:Subject:From:Date:From;
	b=Uacr7sICisVSR7oeqj3I1dL8JbkgljpjSwIfdnleECMLlGFudM7SjGiMCxHYCFXU8
	 aP2+G7LYiXfm0xLrR5zc+YIPZdMcNWTQCRfEtNU8f/YRinmrWysNuhkw9L7g1UYNVQ
	 bK5c4zQ6IgSl19JxXfJOZBL8n/QJrHs7UpZ9IFA+8E2OET10/kCxSEDdq45LO/1jJx
	 Vy/mOy0Ypcn5mcopltQ8yl975uMLQPzqk3laAG5GYwUUqimlAlmveIUNjA/jhVkaG0
	 Jlf2/aoK37VZlaQDRRzIJM1B4h6WNMmsxWoInNMhRHOSbi3wO/rtmI2w9JsmxDPHRt
	 oVnglghCqoWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21CBC3600C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282659369.3891.9853370213137170437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcd3fd297345e47dd7f5d3aafc8802ec0f0527fbead46411201f75c44e9909e
Date: Mon, 24 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742826593
