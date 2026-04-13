Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458538947E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776061654; cv=none; b=pCrfzAR36z19sFRSy6CjX6OasF5HyI6JsicAlTIKAOwwpgbmoCGdwv/xEaIcPfi2slNt2Rzi3qbPvq1hTCbLlV+h9cHHjlS4jFmDvI/LCsRmIj5nHmlmRo8Yn16nOAbj165wvJR1JDrOPY57IGmk+txLWrMPuJZmtMn1XmhdqJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776061654; c=relaxed/simple;
	bh=oKufdPZ+sUc+3Vgdq6V2WLpgf0r4J98zodrp4RUJt20=;
	h=To:Subject:From:Message-Id:Date; b=ejtaabWw3MLsTm+8ug3qhutEwlvktKCNRoaRT24X27rK+DTNFBl6Od4ddm2lg7b0cU8Gzaz2SD1oeWIk41mP6I4eT/nUrqsHmeRDiI6OWFBo6w0TuZeNeLHxh8B4PbqmNLULbDWOAc2W1zbhsXME/ZB3rScRnPoa6r0Yn8FgXoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxcx28Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxcx28Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDDEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776061653;
	bh=oKufdPZ+sUc+3Vgdq6V2WLpgf0r4J98zodrp4RUJt20=;
	h=To:Subject:From:Date:From;
	b=Uxcx28WrB3QsSKAKMnTZpfPRTmaLtwzK/9YC6j8XeqZtxj9/o+rU90Hdqzxa8fMII
	 WCxsLlb63crcNx6t6gw9uyPnpRFTPKVd59rRo0xUEC6rNqSkOaqHAiZOins6JL3NMu
	 9fZsIIOi7XFBYa+LrwzbAVmi9R5wCioy+SpjLEi3Msokk1zbPM9mt7oEh+SyTpQvsB
	 NZ4Lo8zqp1HpvRimmCtZz3Lz27xUAeauleH/sVF3THrpKepRK+s/002qPktoqJNwCQ
	 CjRFZ5jJl/ozIRr7mDqNflch4JV7h6w0W+DDtAOew8xXx0KBUDlD3n8FOcfo1Yegzr
	 1lvUbkpVKA4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CFEBFD01
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606165368.24807.1438358287060175561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26945cd7f1e57e6a1277626897b6e8a7170999003dbd05a9ab5929eddbe1028
Date: Mon, 13 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776061653
