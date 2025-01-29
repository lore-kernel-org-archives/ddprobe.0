Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DEC188A3A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738136754; cv=none; b=Azh+9X4ZzRsahM/NMHi9aFDfpyQC+O4zhj2kazOsD2c0K2y9FaO29jxJZ1jmSUywl3ZEXSrY58Fv1vm7Ln1sEZ4/JSbelewdBSF5Uol3iv+OC+9jj17OX7qPSnkbwsYbK8EP+lMIq/r+lzpJ3NkTkf/rdHTRyyovOXPKFNk0Mek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738136754; c=relaxed/simple;
	bh=Jw/relSx7kfIRmkkGfQ+1iws1Yk4KJ1v9x+zF61cR4g=;
	h=To:Subject:From:Message-Id:Date; b=hgOlyev1YZtWChc+QgvUWiUhDKlyqEiSQeldhSSMqL4vVKRk71VBRvtWsTsn7QNb2KS+WmmnaBpEZ7pNOHOS+8zyeu3HIW3h0q4m4Vta34GuJTOqh1sjNT0eKSbwDjvYEsIkvI00kQ0qRE1b4HTXKUfKP1pekbFcY/M0fkb0K5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ+zEejx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ+zEejx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8C7C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738136753;
	bh=Jw/relSx7kfIRmkkGfQ+1iws1Yk4KJ1v9x+zF61cR4g=;
	h=To:Subject:From:Date:From;
	b=fQ+zEejxPZp59VLSqJcF4j6STMioy2AcOaOHJ96fu6yTJ3GMUsWxJYu0L4Kzj6zlf
	 0OGtRZHtjZRsBG7F9U6jd5hn0YtKUhXLbBsqf33LOeKrVWr+AskeFAxZay1eSYLf5u
	 11Vnz3fptGms47oh1wa0q7dSFWSinfQlQJ3c3NLnuxSRcFwNqsgfSVr//M9AO+t3i8
	 Yo6gXaH8AsR0hQ8FNZv20wn3iazq3cvcb/MiVe3NJZn8LemHXqBoFm7Lm7LesETwjo
	 OGVLBvcOCTaXr4MPKDFlt0gRvi0XntdKePHvSWrXHfGP2UGcFf9ZOJW5waCPxui2iw
	 pMz3b2afiCcHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0597C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813675363.25879.4609864366879290153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7a18698cc7d501631c5287631802fa8c6a162459bcaca439008c6b2cc1d153
Date: Wed, 29 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738136753
