Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF1226165
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749562794; cv=none; b=menTCkAoHtitm9BwXvbfHV7Qmw3reqOy/YyMdeg9+GMyUVZ1CI1jHbSGNjhTlf6pFzjE016j1jeZ1yThlMtfdtF1PSn89j7PQJsrNQNldE3iHqIrV35UMwBCyKnjsJ1GbCXxXrjM7jRz43MVmI9zWlDOE0ecm1bKlCpHEmDhleI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749562794; c=relaxed/simple;
	bh=u5XAz9uEslWBaheeN+fqs+Y7bhi202Kd3WmKseSFLnY=;
	h=To:Subject:From:Message-Id:Date; b=pTd2t+VmP4VjkkSCu28MRTeZugi319w3WKXJftlIPahAYLzsshwP7UWe2fqlANB750tcvxda2HRMFyV14qLwiqCGogIZPgjvkGOOmk1j3/h7kd+aMo6FBWZQR9S2xVNAKyrutQo2qKGvum0GOQGJqs/CdOTFCOGkZ/im5u8XlYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLkTYlsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLkTYlsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D93C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749562793;
	bh=u5XAz9uEslWBaheeN+fqs+Y7bhi202Kd3WmKseSFLnY=;
	h=To:Subject:From:Date:From;
	b=iLkTYlswJlGZV7mSXJvs4QPVCcLN/Idkv3wStJxvD9lC04ShbLoQDGOW21u4SidZo
	 QULSwpqGjrWhd7np2y6B7wULdmRiwYxZ9HmTSbwlK+Qfc0c7Q2v4a5U7WoMSbSk0UV
	 O9R+pGNrj5AGSSBa08A3zr3nesYt4xWEVPkByvT9eqdKkwCm4/ONtWCbqHURn0bUtt
	 1GunQ/VEG7t9BIRXR5ncupNHnzMvFonZLOWBsoU0MTtAIuGq9scSjVYBFnj0opycFR
	 exqhYR/n4oPECW8MwcqmzHIlP4xPFQ6yTqv3Dd1Ch1jOWZHRxiNKyKKMckGdf5iEye
	 MQqunfV0WwovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB7C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956279358.11716.17421019181491945559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3b77a7378c0a4717893cbe244785e159f98ff005201249cf74ea3cca1339f1
Date: Tue, 10 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749562793
