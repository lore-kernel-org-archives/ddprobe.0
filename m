Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F853815E9
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774913694; cv=none; b=QqJDzcinJc0VzZZl3/oo/Um4IBXuHTtVnh9qVUMXPM1PFZ3OSAbHlYWdZzAVpuk2b9axQHyfmOu0yyw+7F3CqCT+SLkEeY5nFFUEp17pPZiCKy4etMl7sdkkXo7TzGk30fRUFLutjxKZmkh6zCtA1yzkqVKp265265oQ3nQlPM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774913694; c=relaxed/simple;
	bh=HoNmu6+hLK7AEHI8jpAgqXeyOchnmphirB6cxI+bAEM=;
	h=To:Subject:From:Message-Id:Date; b=TBSd7DlhJv5hfPmwmkdz4mWJRCVrj10/ToxnSTWSpd9rHcahVlQEtmX7X49hLyiMXf4W1XrLF58hlwWtTK7FgrqjLY0Aczdp0DXm3dWl+hM0vr+UC9Rth8xYxHSgmF9nStsxP6pto4YrQnzs0FHFvrOCrusyqwC/6Ztow9fvkkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1/iA8Ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1/iA8Ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C0DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774913693;
	bh=HoNmu6+hLK7AEHI8jpAgqXeyOchnmphirB6cxI+bAEM=;
	h=To:Subject:From:Date:From;
	b=H1/iA8Oke46nkH0RUDsFCQgY0bJry6vo3koexDl8Ry5KO2ARTBoFEGvtfIlO4OMZu
	 WUxcJfy+1a8CH0KLyiDx44Imm8+2lB7wplB0j3YJfTVgQevFbMju/4NXrRGsH1KfG3
	 RAzGErAacq0qUrHNTYAO9yCNOEbb9QHAaRYZO7vTy4oV9F9CSFmhy3t6OoM8P8OVzZ
	 ovHjvY3m4DtPV8RNUkYfrIYzXOvtqOTm2NqwsaJeMSeOttacAmwteRbcvqnlxOQPhf
	 PZhyWTieqpVbSaQBc5yA/OK2A7aEx7WOtVwzMZgkVS3GuAixE/7/KEhVi1TFC7Yx6x
	 W1kHFn2oWJvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FF1061B28
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491369358.24595.675105653330823990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10975ecbaf5cb805f4c8b8560f5c24a74651e000fc7232b1b8fafd2c721c21d
Date: Mon, 30 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774913693
