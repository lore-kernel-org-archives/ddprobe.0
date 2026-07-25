Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631FF392C46
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784973634; cv=none; b=beMKj77F/Sw7VE1ag1j1UGI0Qx+TuIUhGbyB5kNw5T6lW2LnJzOtdzqK/KRIqJTs31eS6MaS6FLiqcdhL7aTUcPQSPiBjGuTjbnrcxaFVTiogn3cJrkkYkyZ+jzOtgg+LzOytOEPPb/a7waYTEl9YFXmOD1JQtQ16Xh1cnlI7Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784973634; c=relaxed/simple;
	bh=DScpLt2EcbLRmL7c213yRnY13nl0JVic1H5ig4Sgrxs=;
	h=To:Subject:From:Message-Id:Date; b=DN4nb7w3NinY2ySOjp2w9O9G4e894BilqpzISTC1lLnmkCD0NulfTM+x5af4qUwJHfe1D/MZVpRrYA8akqRDOpT5ZA4bL9U7G2pm8YvQKCvq6mc2REs9F8FpeJRg9RKYxIHgiQzU+9zhnyikKKkVRNHLY4NEKO7D/um4d6XknVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlnQ51rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlnQ51rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28C7C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784973633;
	bh=DScpLt2EcbLRmL7c213yRnY13nl0JVic1H5ig4Sgrxs=;
	h=To:Subject:From:Date:From;
	b=MlnQ51rJ07oZhIMn4R+Qw1i5l0WZR0B0IGf2/iC6Fw/j8/x2bnVKB112Bpfdcu5x7
	 6Lvr+nO31iBzbrw8utNOWwAy1DvPGeeuDyAp14kjN2pY0NcpOB3fq+kilVOlLjSOHX
	 IQNclQ5VdKcp82Ha8C6imbf64W0DhKMMBLdUfYXNvkMEUnMElaYthRgFuXJlH0OG14
	 YbMmZMo10ju1N7wCOgMABNeVKczmhLO1ILm4xhkAqjU85hx4EanPPeKuurCz89ql8r
	 SdmXtrlaK0XC++6D3xY8mOXAplEZ9EE4fxX60mMleSSoOSv4dDErTxU7mS9ZRCbXvb
	 aaFU8esn/HXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5B6C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497363373.23811.17035038511869100195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ac4fdba58c3a4ba0a3d07599090a47853646b1ca9b2c1d8c06447b14090541
Date: Sat, 25 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784973633
