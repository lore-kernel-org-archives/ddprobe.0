Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314FD84A3E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747612794; cv=none; b=WnKs5+KuKEAMil6ML6xpJxXMRne/pyEF+YV+SaGecoF1fjn4meN+sgtFzCbBuJh0K1G16v0uiQ+RtMpy8Fd4XQrI+OkeuqaRFO1HtiZWc6bCQng4ZWwHaEvbrf3VphTdjWAyDUlEZBF5AYE2jgCBVJT4UImo8AdEK+02gJnm5YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747612794; c=relaxed/simple;
	bh=8XEC+/fDZY+HdIvFHheJF4xsETZGGbKPD3zhDMR9+vw=;
	h=To:Subject:From:Message-Id:Date; b=LwgKQulyDGUcx4jWgxBl7GmVsU5/XAbKEpEux+tUqz7Ti2+sjdDUDFKumptu6/NwdpJ72HDc6XrH9xRfVQf4UaPdE2p6vWJNfmhHRsUEaLc4gdlTkrvBWlUE3zXMBdh1Pu5VHkizKRpMiN61df2ZlSF/bek3NID2jMLZwxQcI4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWX0ofJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWX0ofJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6859C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747612793;
	bh=8XEC+/fDZY+HdIvFHheJF4xsETZGGbKPD3zhDMR9+vw=;
	h=To:Subject:From:Date:From;
	b=eWX0ofJDY0GhnWdBAHNYauPJoQKFCcGdK+UEbPJ4x9i1N8kK3XeoLRsj8LNP8p7jT
	 JSyM/1i2FqybEn1tJvVsFF8pxYV38fkq2t6mnBX14fHVAk9iqWEOTBoO642QIA3eUM
	 3+4x8Nde2STWK8qWXshCesKuoFGqk2jW80uB8kS8ZVFXjBumdAnvBJ5/dkUAu9NaQe
	 FU0cZG5RQbOz2Y7iQqo12JEuoAEx9g143/3/W5zKftH9bDXK+nobal9S4PfQFlruUy
	 /U9wFmonbSOpNy8cyOlWpk11h+wNqjJvSNIHbRRSiQLyEubYByoG8+LfXWaaCZpYqk
	 x/5fXMTqtyZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9338EC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761279357.2879.16299798746127736009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e20a510326fb011837a5ea3fd60c0c1d4df044f1bfe2d9ca04d3f4829ad7fb
Date: Sun, 18 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747612793
