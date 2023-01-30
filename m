Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A2B378
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 039A8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675043586;
	bh=LxwwABb0sM8y3G8GuSTaXzr0Z7ipX+3O3VDMRadlTO0=;
	h=To:Subject:From:Date:From;
	b=fCxt+duJNl1biUDLdbGlGgT47+0FX615VJH7uXGF8vdWPH23EW2PH45YUUPnnbK6p
	 xdz/HlsZWwIFm+DoPb/knrHOHDW+OToK4ryIM1Hss2HEIy/eafU+i5rFhTNwGefXTJ
	 xourCZFsDTQRUThZ5t57wkwYVzquSadpJWUMu+QxnvEIv6SIq4zue70xO+x2ZiBLUi
	 B3JUt6hrX231BNn6kJmUha7omOVDjsKDlIsjH/7lI8r2sZ1Wxzmtsd8XyQITZ7Dlq4
	 JxIyL429Eh8lmcJykiaze2gUx4VTbiaV767Cvmom0SnJDqwlcnOE0kqArOlWgCZ70y
	 /cKhmt+l8mRlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27DCC05027
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504358583.7654.4114993400433036587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd1f881144337cb904ec62b0df0a434f1b765b513ce22068c3065fdc6ad35ca
Date: Mon, 30 Jan 2023 01:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675043585
