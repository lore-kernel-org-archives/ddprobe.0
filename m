Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B02F8EB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781816794; cv=none; b=D3BTGjQYVcF0VQtkJCk5AW4jNUq6a2LbuAbJSfFw0Mx9DkVHbloc6oLbMoxqIpRV9ddYWvdXN6sOvqpQ4FlgckG9d/e7QnkNovygchX54LJRA4ORaPQ+YJEszBWIskebPN5UutblYjpBFzyswfqvKGOpnuQ4SwBZgGBsNLN4Y5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781816794; c=relaxed/simple;
	bh=9ofC4OflN1Aghxxo2NJk5zmj8HU3A9qRQTC1nIKURqo=;
	h=To:Subject:From:Message-Id:Date; b=mZ7e2e/sJSUOYCqsn3PDPP7oqAqvMjgGFdLVgYWdDtGmchwL2AEaGsC47WJcmsafdQPlfTNpF8uS5uvwU54UdcJ7B06hvJG8Sgs5OoCXEoBBczWc5/vyBxcrYhNs13TSUP2LJFQJ8PwUlD+ZU+lOxr1z+15grp5jXqloVmOq07U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPzqfFR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPzqfFR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89E4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781816793;
	bh=9ofC4OflN1Aghxxo2NJk5zmj8HU3A9qRQTC1nIKURqo=;
	h=To:Subject:From:Date:From;
	b=dPzqfFR0KWTjxjaMKHSOx4Dvw1vu7uXrAxi6VxACL3qW/o0BT9fQH34QRLKjWIjQ+
	 c8a6IJW3y8/I3o12JrxspXl6NcpJrKDx8IjcKhx20A5AdB1DYF+NahkBu9FRLoWndO
	 xD5yCiUo3IeyQQ321H6MNqe8Yfw6tn4cavB/njXSsEtsAP0GOS5rmYYnoB07MnuyAn
	 +86TJ9Cppqs8TFP3OEg4eQ3DqPX3kSLhYsHeeR6//cYMoCD0mgGBbaWx1EKb1jRfdi
	 vWr0SNhK2JJqirYv/k+6sPS0lMN8G9xw7xfBcQjn3lDQV1RC/j8au9Ny7+D/N/ey1A
	 eEfSGDYAWL0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181679370.5886.17011925884881728985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485edafa54b0670a560e587c3d3c9dc37cd02f3d892c06b1cdc081df84f7afc9
Date: Thu, 18 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781816793
