Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEC622AE5D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748702394; cv=none; b=oz2UsuPKKOV1ap05CEdXKjvFFnO905JrMCUE7//hw8yfcMqMeHdVQbWEM6bHoWTmf/HKu+lV4erXI6VP7qBqwhe8DiN0Lt1igEgQlEkQaBkN5ZWu4gzqeHSrmYknqT3ELFrS2pwMtzO3YOGZOxAlJ02mkO4RaEUhnY4mNJlbxJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748702394; c=relaxed/simple;
	bh=Zs9utxg1Z4oG6hOIWpXWk5XCbdW+6J4Vxx/532F4WAM=;
	h=To:Subject:From:Message-Id:Date; b=OiEoKlofLP3zvULROAMFyPTNnJmKEvcJjhrMaHGTPf1IdBvGMQaGznYumQDDjCkNHr/a/kFWbCS4JmfrJ/IKjCKa+LlTJR1WXp4+L3xKB71tTuRaI62afeN20PLKs7WGDR0WqitfjO/DcZWlWweogHDlVNmrx+rI6eC13NZuiuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtLJHWiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtLJHWiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748702393;
	bh=Zs9utxg1Z4oG6hOIWpXWk5XCbdW+6J4Vxx/532F4WAM=;
	h=To:Subject:From:Date:From;
	b=DtLJHWiU86tKrOczRjZ/XrHlnPIz8MfxqldZUl+dJhglWKQJGN7ENm3IHutvz9Pfg
	 bs8jgcXY4hDDNNCRIH+dTwR2qD0szFvvZooc1mpJR1XTfUyczt0kUVyaobh4YqUIzo
	 PlHgzYbWBnTOjY7fqMCzDrmsCRIZ5vrXIfuZPRx4QQao85qG5b+vUNtv7WtDGcnaL8
	 qt42VsQD+YVHdsTGe9aRSP5ObtjHw1MlFTPX2xHuew2xUhfGV1T6ylI4/f1TG+XgMq
	 uSuSk4w0asTf+xMvR9xMjEGBVDtU9S0ZLlUrvImwIsry27Hyt9Vz+ib+VusndAz1JD
	 RIMG5XuRTvxuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F353C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870239357.30073.11850330926744430812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f2735ffb70c71598b1feebb6805809038bed51b5cca4663272f47640eda6e7
Date: Sat, 31 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748702393
