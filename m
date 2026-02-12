Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F55291C07
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770876894; cv=none; b=i0puch5LdraLruFZOK/F/jq5MXddmX0IMQg0zgECPAT6Hm2eWs0ImrlPEfYM/bAkVLy8naD4ReYrcACJw9MFhU+Hz0U9JqFruHosObYuxAdgXM9uLpKDe02sYj0LWW5ZD32B6IQd+IZT0Q1M9SfJ44BNdQnSCrTKgTOhF8BU1gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770876894; c=relaxed/simple;
	bh=ihAYjjXU0tVMgQysJQB4ZQvQq5YByW+Wkvqafzvips4=;
	h=To:Subject:From:Message-Id:Date; b=i0FzPxA8k95Qt/i3gYJ2/jVC52m8mkPgpTFDi3nauAG7APgSdPH9ZuYOxlLLXVYd1pXEYUbd/XkfXA5Xxtfen5+9hmakJWQRwCBjukP8JGGWFIzM9vBdqKOKTRfdyx+ofelJO5lJ8h7dlQyUCb8rELCjBLQvL7pvdZGTGN3eGcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlSB+u5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlSB+u5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9106C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770876893;
	bh=ihAYjjXU0tVMgQysJQB4ZQvQq5YByW+Wkvqafzvips4=;
	h=To:Subject:From:Date:From;
	b=ZlSB+u5Jw7MSjjVbWmJ9PDcmFqQAPc0ZJmATB3DfEdJZsVEU1vwf3+9ei+93GkCsi
	 RvjiKc3LW/C4/V9naQpaD9ctQpoFVd+7hQmNX5c3G6JmMyhXNPDicS5syVtWlGFzXc
	 H7yNQVYETA2p4l+lH7JH919HF7pjRgW2z4UK2Bh/riXHqctDu7Po0cYADOyDGtnTs0
	 IX9hcj3sgBCpo2TBuNWofq1p1KskmST+LqYcEKz0jFFqZ9Qd97m9yzHuRC0CPQ46P2
	 K+Xtoy7WPV4ZBQwmEoLaw4s/6iHcDvZLnCEIvQwz2PJTdASBQIVTH+a3ZGH+QsYJaf
	 h28ve5odZ8qCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96948EDF048
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087689360.6611.11283811964881989641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4d7c66efabf4019659c742398b261838ff4b58c5b4c86abd98fc8ab0422327
Date: Thu, 12 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770876893
