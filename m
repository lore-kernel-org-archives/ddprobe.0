Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CCA1B813
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717833443; cv=none; b=VfGdrd45rxMiR+r7dU0eSg/Sn4PQg1UDx1jDBPqLJ2D2+3SIaFkRPuDRXsl8fb+/w0T9C8gYxRLKGd/M2oE+BVKCtUiBBXJ3zKJPTZ1dICNmgOLlcYYU8Hoo1Iu3QtJWbenCkVnoyEBaFZmu7PZri5iCLr2q/DXjXSODYchrtl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717833443; c=relaxed/simple;
	bh=buZit9h2ampq5QFhRfDQn4pvccJWKcLgOAn0AHl0aBQ=;
	h=To:Subject:From:Message-Id:Date; b=BAf7hh2GhV4j6uFo38QJsEWHlT2YBsPP5Yt/Cb6AeqbdzfQF9RJUAHcOR+Auxjlxb7rHEi9jLJS9wvreKboVuAIxvJLzQAT5uAqfQgARzDEDnNojYRazMrXoisSdvl7Cft+lPhj67vEFy/Htu8vYbkcPwfj6NqPnq3niK5CIteU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3iVDYhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3iVDYhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7E9C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717833442;
	bh=buZit9h2ampq5QFhRfDQn4pvccJWKcLgOAn0AHl0aBQ=;
	h=To:Subject:From:Date:From;
	b=g3iVDYhdzdWHZVmEJP+mlBzIL0J/S3x8xVafWTCxCkqeMyESQ49XsbtOWi9UE6LB+
	 G8bHbGrXa4+IXkQV5m+by1+BlyDceRcnG9ItTZJGR11wZcIq1TUqoSwJ8uelHvLmUg
	 52lzzL789RC3xztTQAJb2kh5SkakXNdLkU7rrFu9ktctYKbxERKNrU7pwKjgBO8zAR
	 bzpv1POijoPT++hQiSMPgpwBWw/pAsKcyorP+xedCFVw9uhXeO5oJZH9n1i1eWAqV+
	 TDab80kJg1IT5I3TmilF9SfEyxtqsOHfijfxF7KizsBPBi/iiXygGT+oty9Q+faqM4
	 7tSxX5LnG4ZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8548C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783344278.10613.718205364419024136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4eea97cb26014ce0cd90ef58999e7286c7423ba91ea90a655f85dec8c33b2b
Date: Sat, 08 Jun 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717833442
