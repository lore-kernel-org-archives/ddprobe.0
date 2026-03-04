Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB227FD5B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772637294; cv=none; b=ogf8EsKcBV/Pthe7Pmz/5h6PD22W0/HumZrrKdKZx+rIvL2Uo27ryuSIxatkzzJVUuf9cT9xR5rJgqXq4VJOcOn3/+eRXpPHugdyhntl/S7l9aMADO5FKzT7Wz6C6mGCCFznPLqPu/gwjRQeyj1KpBL+zVnuuLwXFKhnOE0odko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772637294; c=relaxed/simple;
	bh=/kNPTc79zVrNfLSXVsAaS9e2mNAPdam4DaOfZVLVV9s=;
	h=To:Subject:From:Message-Id:Date; b=lGzDnM9kL3Eu+rTknkAUNrkmLy7d+WOHimAjyLJeiDlz7h0AlefMIixZFPrpu88dBLIIsPnLamrcBhYixRnTG1nVKZoDbkuOz/ZquDSfWwwNMra1i0NlTGjm8BASIvN5R+62d4iyj92FdJPQY27OUiC5bnm7Ip+DX1lO7SjWPOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isiKoGlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isiKoGlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7AAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772637293;
	bh=/kNPTc79zVrNfLSXVsAaS9e2mNAPdam4DaOfZVLVV9s=;
	h=To:Subject:From:Date:From;
	b=isiKoGlJ6tPp+XOg3sNSp5sJAnZLMYBPerB3smX0t/RwRp/UF3D52nzCMRP6s75GL
	 Mh2POd0Of9DzoMFL3YRXXUFt4ZLZKEuv8rICeYO8rwHXj6Y/P48TdFYozrZcvgCFC4
	 jCAweavWQL26d1TfpNnfj8RFb3V9lHjWRUZkddWh4U81AEEahu1OUGDrVVlHs8rODs
	 uTbQm2NMeZrvRGFUHQL/iu8B1YQsOS/rRAWuKol61g/AxcWENeCwf9QBsnLAzBVNMi
	 8ufpsLTlamO/Bq/x0ozkl4US0yDesvtJg+PuSLV/Rp3DNghFFztVDr8geGYrYVuHKe
	 xEkdGdc6q08ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B91EF8FF3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263729373.18075.5979029444281033676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593435a199841e49df58bc3a9bfc92c9287a931c3dd1819daa77f313aecadbe5
Date: Wed, 04 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772637293
