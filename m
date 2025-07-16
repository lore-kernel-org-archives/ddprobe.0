Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069B28ECF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752653994; cv=none; b=UE6KWtc1n3sWRLwpgkx9EcZ97uj+fCHB1L6Iu0E6bwp95UpCcFIIfLBGAH0ZBJICebh5ZZGTRhQC3Kz8wR1Or22Vh20EAIMJyB/viUvLlYq9iQ4o/fTJooALccbG7l9whFUIoY+dPZh6kt5jjUJcMTc8HKyauz8l8jEaqeZoZpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752653994; c=relaxed/simple;
	bh=Wz9ow/CqNulJtu8+xYtecSNwfWezb4E0VBAaKl8Cxbk=;
	h=To:Subject:From:Message-Id:Date; b=cz5woKibFXXpaU86K1u+Fhl0mpgCm4J8w34vEL21wtTA0cB8UZfJDXAMDWegehSwh1ByRY+sTllCmyfKb3e56UVuwwU7JHNfgNgh65VXgLR1U4+8PTGY+yrUHEXX1veiRgHymZPygZ5GWVJZP/88UKTOE4r9Tm/canLOR1tdSuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTGW3YJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTGW3YJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9E9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752653993;
	bh=Wz9ow/CqNulJtu8+xYtecSNwfWezb4E0VBAaKl8Cxbk=;
	h=To:Subject:From:Date:From;
	b=aTGW3YJFLjBqHFWM+lhkvz4c192bUjOSm5vKrgGlGYgZ2DHAJ2QppedVOfQfE3SHF
	 yThhvgtQcEKgI37gYGwJvUPoqocYcL2kYZVVu9u/BXl9gkVrJo7dWT100LDCKL6yVX
	 TRXvIL52ysk5kuglqr1ppE9f0CBkPm3YRfZd7nthvEmnulBlKc7aro/Z1MFlKZSKR8
	 alRro5Ex3qNhqBUqVJ6KQZHrvpZcsFp19j7r+FmYM0lN9oKf6gjW4N1As039C4sveE
	 HWNoHRr+adQwOayRL1HJQhJLpp/YU6AP+V6RS5AsVU0B3XaP0JWl8gJd6mjSp+Qrg5
	 NvSXR3gPWHcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265399357.16435.2541701830750462026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5573975a3f81df1fc22cbc974fffac1f46540f225e768c54621a84c1061360
Date: Wed, 16 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752653993
