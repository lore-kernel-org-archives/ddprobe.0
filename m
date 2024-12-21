Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E509E40BF5
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734773754; cv=none; b=FQPHSeF6UkUJYZGatNZ5w3LHuESVwP2CgQCocZ2ikdnVOIOeC4b5N52dzYJTNQLplHgfzVfDgMZ+cswjsRqP3b2eL02dN/07b33tkwB93REsZmatV4nDtcR/l3qfb6cGUg69qYjHyQIFi13H/InkiQ5CFwnMklDip6l7J18qPk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734773754; c=relaxed/simple;
	bh=mbBbMqpFlZpRXGxm58+VH3GkTE+h50yaBxqbP7uo7A4=;
	h=To:Subject:From:Message-Id:Date; b=exwOlU+WJlmGT8caUDX7BsXxhzywZivqdYNMok4MpfgeCB5AJG7Gk9qMRTr4XXyQOau3YW5FdhcmpR3sjegUQaIclxR1Yxcj3rXtQHKbHREU+IWJHccehZjgtCDWz17R6H3tUbVtm2hJDw/7ku8nbTnCmdzp1A+OrzfndTCFzBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV34qIC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV34qIC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84F6C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734773753;
	bh=mbBbMqpFlZpRXGxm58+VH3GkTE+h50yaBxqbP7uo7A4=;
	h=To:Subject:From:Date:From;
	b=MV34qIC8IaFpUrwLPRJge7D4QiUFt/FsyRGNP1i4PqU4/JNP7O0/K4yQ4OMGEEttc
	 6pMJ6HxSXjOAs4lgXxwmCGU116Zr9GbWE5sDo2v94sjdwqDky+4Xf+2dndI3hOibdK
	 aMybWqZW68Sjr+t6FsqJC2RX6XjO5mf+Rp06XwB/WZcY3heCnuUZEtLlk2rIRsSivd
	 FmpGYsXnjDFq1vOjszvDtifusW8c7nPduMZ9j83/1B7H5Wxm/UHDMgVleQeYEYiBkv
	 U9Wzzbsyl8pWuPA9ynOVYCG87r7DWjlPEAEb21E5gEU49+4u1JxiHMlVQVNAIUqH4k
	 XNhH8T5lC7jXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04FBE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477375361.2738.3880466066502691328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccea8c336147c293734918470213a87b14a2cb024c2d430d27e079e7175b60c8
Date: Sat, 21 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734773753
