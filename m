Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D895C6FC3
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758341993; cv=none; b=bzd+hPvxBjcbWx2a45Pqf56Metwqb1ZCVvsG3AzJu3Kc2b6m8cAB3Q/+evzVsLY5/npYDQRws1lmpYejFPbfGzJvN0ShDmYhfayynley+3BUvENb664o61+euKcqAuiZ4Y5aPPtYp3T/0xrGb89tA+oppngjc8QhVhRaWHnTkrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758341993; c=relaxed/simple;
	bh=sp4UIwKYYOXlRGXhrEtJE0c9UUSfKp0yBCaIkQiU19E=;
	h=To:Subject:From:Message-Id:Date; b=GIXgYzrKjuxRTSZSugu9YSUt+mhD5NKQPejtW4GH9RwwhBwvnuJenfK7ychnpfnIMoFXGbmMKXJOz1MlFmEyNyBqUuQtdCOZ7y/vFPQFYAvPE8CBoKRXeMNIzr71biV0W1B45Vf4Ajt+55FvUMI/HqPLlLfQTQI8EijrUF8CLsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBZ9irkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBZ9irkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFEAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758341993;
	bh=sp4UIwKYYOXlRGXhrEtJE0c9UUSfKp0yBCaIkQiU19E=;
	h=To:Subject:From:Date:From;
	b=rBZ9irknQw0ZcEw+a6FE7pRbTY/ei019Z31RdXtIXX/HBkvx2S02Oiro72gv6fD5Z
	 5lFadYgvLuUmRCz5Td4yJqW44QFQnU52dkCWYZ0qDOLSfRz1jYGDw8iInE8k+ODDHC
	 jkIzPj7jV4oC3sZnn4bYd1EG8H66XO7u9L8pjLGpFEgWwwgK4E9IUwFUUBfdNJHIbX
	 NrN89c4TION+VvHQxb8ziOvWi3agWv1vQHcny6f1lb49AfRga20ndWVvbyNngQc6gt
	 kTVYH68NX5A86y8ZLCJIeEfBieKXSZfa9CPnpgL3J3M8scASXq/cMfJbxER+ZFgnvE
	 eVBUgCdZDzivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C42CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834199358.12889.8499737260643942830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d920fb5ab745f01ed2de076ec65735083229e8220d09d68a14cb4e24abcd72
Date: Sat, 20 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758341993
