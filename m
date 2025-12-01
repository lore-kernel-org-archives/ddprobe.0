Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251EF1DB122
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764568374; cv=none; b=OtFNUOK/PiiJ9l8sd1sz2Qm1MTEfCdZFncsPjT/FbvXgtuP5pnl9+pjWgJNZb9bm9djtDBwIqq5ZQiNJ6xFfFddy1JhhmNhZ4OXAFXdvoxIs2JlHQ7cESJjI+dunKum/uv/6nGtsRwHEBQhb0X48rvloJBjGdIBQmUmWTlUePIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764568374; c=relaxed/simple;
	bh=bq+0wAu5TTJ13P/nnVJsUFa3jPT4TlxFRaMspxeGC5s=;
	h=To:Subject:From:Message-Id:Date; b=ZapS+t5xJSIQqyyP9PQSMtY460yTmaIXVTeLX73KqGW11P/Zhi32S/C9XFKIKKUW91qyYpo/Eb8grkAzo9bAl3hG/CvVUBBUlLK1Edcs/UZjknCBsqdt/ppH6TfCFGw2ScqUZ/0BUE4XR2QakcvNMCdCz6RG9jJVZmbLMIh9K4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCk1kh66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCk1kh66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD663C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764568373;
	bh=bq+0wAu5TTJ13P/nnVJsUFa3jPT4TlxFRaMspxeGC5s=;
	h=To:Subject:From:Date:From;
	b=WCk1kh66wRpB3p2CFG/TtqCROS2c5sOY+EHHZ5tPeAtVXXtfvlRGlWcLw5EQ0eLuL
	 Dxj8fPwUAmmWQWZJo5G5Y2sURWwzSR+I21Y0KN2tPYjUHEtfJcPb6FGbU2R7aoQ3Ty
	 tF8rs/1x82Ezui0hJRZzrJlTfS2XmTsRNNIkTaw4XfCRhk27map+41dabRU6uIvgUD
	 QrF+/meTVUzI4ADXg11/ScmOBXTDo8OzItVPRza/SxUtI2BIzsZuS7Ju00izKQP92h
	 ZZTCBU7aH+b4n889/O/n6yTaeJPUOZapjHLS9RZBNm3qOGAoycd0Ux9SV2nURiqpAK
	 nOWOHZ6bb+bXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92304D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456837358.6675.3982729556716951208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936eb867131c195f7c84494e3328e748874cd8366af7d097c50169c1a29edd0d
Date: Mon, 01 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764568373
