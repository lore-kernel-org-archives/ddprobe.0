Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270AB30F533
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764219774; cv=none; b=b02V/eFt6gUpgdJ5FL94IctZTTw4lREvCB/NRnbsrrQNSovTvhOVZy1aykM8iNWdV8SnCQETC/gHA+b1OBNbuVniD4rlnSu/0gNd5Qty6+2DXOgx79jHxMjD/VtNTnDEMIqmt5O5mKOvs7OA6IkdI5gGx9jm3IlTP7CxHpH2t0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764219774; c=relaxed/simple;
	bh=fMerVpMNWpORJBFWW6xR5Lpn+iykKYp7APJh6qcyLWE=;
	h=To:Subject:From:Message-Id:Date; b=d/cE/S9BY74znVUf8jkAGjHzDfXgzSX5fNNQeyjrlBNRJagXz4f79RfOWqXFGqrrrZtfznFlWnHXkhkxv6fzQtbxvGiZBQKKPap7qKNlxb7rTla6zTumpBvWtImC7Z/r2C30kbHdCJZMarZJ1AGq0XuD2s7/Lzp1/GqkLdwtp8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSWtp/3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSWtp/3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB26FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764219773;
	bh=fMerVpMNWpORJBFWW6xR5Lpn+iykKYp7APJh6qcyLWE=;
	h=To:Subject:From:Date:From;
	b=MSWtp/3VS9RiHrsHM9qpbRl24W2XD30269fwtXiMIHY/c9/0/cxUabIxVNQzDQCX/
	 Ii1Pz7tzA5BM1+5Rnx3xNbWhLCDwc+zG9mqLPDe8ebSNWa4oHFfdsnTVEkn1ztLRmP
	 0SqJH9oVs1UsEN30g5SoxAvznDPEWxhS4nYGpsasS8BSGUoLWw+07coXkRkhXVqkT3
	 yeK1t+Zq7LO7ldIlbAqF8Y5hh+wFQSgnBCd/ZZzbqqee/CvwbE0O18//OEKHYAgx9q
	 clK4fAUiWLn67MATd7zJl/EDZDuJ+OSCvYKS8pJ5OfPMtuz8+sL1T2+S/ekbeUbVwz
	 fsXoKtKzeD2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EEFCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421977358.15566.16332938160939923789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f5bcd729389922864727c4e69ddbcbdb9f7ea65a0ff79623c0712382b51cfc
Date: Thu, 27 Nov 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764219773
