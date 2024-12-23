Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298D2F3E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734950754; cv=none; b=DpEtgNhYJy1KgyJplVq79FdgT6WtkrB9HACGWuGes+bta1PYZI+S5tuNx+blCD/HXy3+WwOxJeAu6F3K/J9xyNTyN9lTq9SCLWvoqqFzecxzHM2LAapKhlyJJ9xTvamXQYgI3PL0BdOqo9gIr8DY1T8t7R2UQM6XZk9kDV0Crtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734950754; c=relaxed/simple;
	bh=6THUx1oNmBrMPfT5/f6sTswLeZhMAjSRa0++4H3FSdg=;
	h=To:Subject:From:Message-Id:Date; b=PTm3IEPjmfYSFBZLLlAv99vTaIqnXOwTdUrYg8YalO1rK9Zavwmey0+nfQPisrxhA4daSl7HCj5vde0Twzk+vV8b1tpmma9YvVv+As2j9WF7dZYmSNYQ4sYYYMQ/HwfBiahYP6w8aJ8Yfcrf2PSvkkduTTWIHiffrTQEEl+sTFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRWUJB44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRWUJB44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF495C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734950753;
	bh=6THUx1oNmBrMPfT5/f6sTswLeZhMAjSRa0++4H3FSdg=;
	h=To:Subject:From:Date:From;
	b=rRWUJB44Za+i9cMpGxIS2I/9/QF3deONqgkuWOsfPZDdem0qPA1KcxgNaVD0eb3OL
	 2RksFhdYlp1euUzEpC/EIXCFjthFaSLsEKF6osE3f8Eh1N3Vdw4OOIpniirb74cKdT
	 0E6lsTqiH+CgieSHgA81CE5SfFSf5cFuEaeunbc56iHYTLuPZdMz7/sd0Asdfrdj1b
	 WixNWlvt1NpukAL2mYP8GQl46g/77w5XXjDC2wa8qrfK8Uo1LruV7MyfxUEAMh1Dkn
	 TFtaMOar27ufuBr5slXJ2kG6a3s9Q8ed5Im82NHUeJoPwaDfkfcbHlPvuMOUhf/wIE
	 WRrvYMlDjaGhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB4AE7718D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495075362.12669.9607674608165667937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8407d225c748a653e871812678a89e16fcabc3c70a165044a5eb1922fc5978ae
Date: Mon, 23 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734950753
