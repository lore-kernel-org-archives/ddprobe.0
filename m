Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF3736B90D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784916034; cv=none; b=IBy8SfbbwduonQIj7dgqP3kLeU99LsrXIRNCJe1zHh6nmXTfe7uN+J6JGqjRAT8jfAedglJAZOHdPkk7z9/uPym27faFk1n1TjX9OoSbI1AupkskhHiuFRE4cHi+mW6Dagt3eA/L3UFSwIMN8XxjHTgxt+/h6GsI4vvLd13vW7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784916034; c=relaxed/simple;
	bh=DAswF9XUpS5jAhCo2aHc2ndaHw6Nx4HsbFAKf7BtPBM=;
	h=To:Subject:From:Message-Id:Date; b=LkwjJXHuATsFCyLdsE/hd3vJ1X8+6CfDIxt/AK4haWbTzPTVZBxklkXLhRmMYqRFbaDLYyORTXQv9+/BYvKyKtZChA5rbi3xAj0hh7Lo8Bi4Y8Eh8yjrqi2Vj6QRpeBKQ6xz0yRYT2f3C4infPtxopAb5/TjDuog8azeVIxLATI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/gU2HVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/gU2HVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5808C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784916033;
	bh=DAswF9XUpS5jAhCo2aHc2ndaHw6Nx4HsbFAKf7BtPBM=;
	h=To:Subject:From:Date:From;
	b=h/gU2HVjiWxiSOZW0U2pBvTDSu7J0zu1jT/ey9dJamZ4gJD9Aw9csZc57FLBK2HlS
	 os6ePKlkQa2rosSD39WiGILs8LNf8Qa03xj97Hc6rwKGJC5Pd992Yu9SQx872/YoXc
	 mp6sp49SYMf0RDwYpnAajUqWsNADpc8BEb4TiaLNefEJFFTWPg1FfnmRaom+m72l9i
	 o+jUY5evjJUaUaYRULEdI872D9BU37dxKgoJo9ntLSI6218gpzQ3bqCjmRdYxBQrXn
	 bz00eLqq17jzrxrEXHusUtoZI7Il2xvIibG5HpqWc7ihQsR2Cni/Wz0kJE5tsyaJ2a
	 EXJGb84r9utKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4A1C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491603368.11328.3551941073677996232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f239aea0b600d6b98f1a9a6e87d54b9c09a57e098629889fcbff4a19b441eb18
Date: Fri, 24 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784916033
