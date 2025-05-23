Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C161F91D6
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747965594; cv=none; b=acRKyO8y5yQw7Wz3+8L1JXIXn8zGCDYZ4J2oQXm+ud3xLwwskIaTeo+VmAgagXn9d6Zj6bK4FBCsQDJaWTu3iKir/trMmTmX83380hdAIBSjyFfuqbkvjRj4W2JhlBCLzKSBWnyXntqil3whW92uflSONxwYTKw5EiKYyAhGRe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747965594; c=relaxed/simple;
	bh=iipkhvfPHABuGedi/h9GIEHAkapuTLn/rKyS0To5Py0=;
	h=To:Subject:From:Message-Id:Date; b=K1UwgC1KZ1TUlRsE+dA5uJ+H9NuM3r+mAmrfsrf+1KzM3X3IwjbBLeUuD7rQmO4Chbbo+GXHkhE0bUGEF/2O8iyLjMUlQBvBODGIR6WdFEB6O0VE++L8384/wpbOGpT0P1EL8mUm/wkZuqY+nBnv06fLQ/1xdpqIDa59U+AQtrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfZtA1jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfZtA1jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A62C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747965593;
	bh=iipkhvfPHABuGedi/h9GIEHAkapuTLn/rKyS0To5Py0=;
	h=To:Subject:From:Date:From;
	b=DfZtA1jlmXBam62uihoNIZCYe/dDQOrzHvu+w5Hfgy8tqTHVkTFG5pDSV2oN9Gc5U
	 Af8pwdEoATX6ox3Y2+gLrS26d31FPiFkyz5WkiHsNwtAZh0poGfo/ZGxGJ0KKwCPA3
	 J86Hah2qKy/SMmISOjQoJkOIU1yahOhae9FwYIBwVxE/oPKm0K0XvgNxpJ3mdh4Epw
	 /kaMCXxMME46L/IrWiMS5egAJS5fZAyVrW7vRm6fSRLN9j4U6n7U+5lylur1fuLFZU
	 LHVhRLFN4wvby7DRk/if22lSpFQ+p2Su+k6lwUJpUW+UjlNN8Isy8urDuZu4B2nyJu
	 WhBJ6mH1MvQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B0C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796559358.19476.16735555678802597632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e250f4fc76b0d9897b05af055be653704e17feda61af6c85223dbc5a8b3976f
Date: Fri, 23 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747965593
