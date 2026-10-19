Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579144E9C00
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792411834; cv=none; b=Xq3VYMb9i5IJ36LdzwEIybp6ISQRnTGyHdaFnvuUgmEJZM2ZDIorJB9qv3rj3pGbuj7o2N0ANxebDosB8Y3XnaAZMhffhVBnLx+tPWs2wzoym96AT2tW0o2k/6xagteUCQWH2BKB0c8/+5ckjTWhKegTr/nzm01hp9jlDEjO//c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792411834; c=relaxed/simple;
	bh=6/Al/xoLANxC6UAj4WqzjWNyPvl46MmTuLYqCnfjmh0=;
	h=To:Subject:From:Message-Id:Date; b=vEa81zTpCY9w/fJEpgbjQpR2+tayHb/ngFZmEL4Gc+hpL3Op7k9e5MaVnLEWRYMavNMwENQPzll/jM9s9rJ7hIJz6M+jzssuRP+emi5Gj25qJl3poxFGuEvR80IdXX1CD7hdAV/9EmK3NpOrWig4Fh6yDQ60NMV5EWIERL2ziog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk1Aky2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk1Aky2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5695C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792411833;
	bh=6/Al/xoLANxC6UAj4WqzjWNyPvl46MmTuLYqCnfjmh0=;
	h=To:Subject:From:Date:From;
	b=uk1Aky2ho75Sh4O1w8foZbCPZV6sLtZfNUjuAB869lAkyzDhXYbHlmfYrbIm6xg6n
	 gdtjHb3PyFADSk8LIOcw7TC+NJ5vEMoTSd3ILeZMAPJCPwfatLLMUJT7qbRjIle4+7
	 AyMxATPsa7E5Qm31B1puB8CuYZqlKlhd+/adcx6AULVRTlUhLvyuj/fuBHCNJLUqo2
	 PuPbX7141F1W/LmQWoOWF9H3EJmXOL7EGpQREuQuC7Vget96765D9Y7on93PaZpOUA
	 5sMAHEoT902zqioj4jyCx0bTNcaCOIB+tySVX+mT2S+q8VbqZ2xPboTFWP2dMlhUOF
	 Y6zaekF+0LNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EEBCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241183372.20449.2533919747650394757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f131185a54bdd8efae9e8c1e1220330642ea450064aedfefed67075c1fffefd0
Date: Mon, 19 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792411833
