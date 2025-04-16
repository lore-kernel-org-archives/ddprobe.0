Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D422DFA2D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744780794; cv=none; b=seC8QJbYe0WnT5tQJe64nRSQfPe/0m1kNRjDFnXIK70iW/zbcvknPKP/8PS+YuLtNyT5E+Wiqu1jePK+NOrpMPmXn+QChTDlxp6HtpZzHXgRoYzxIsNBoZZT9h+4XOtwWFoKoWIZw2VUlH1NfNIFq/C5pKM9nisl0gLTTZTZWac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744780794; c=relaxed/simple;
	bh=2cxfndtlsOYtSofv+BG0HRQlMpFF0fi+eHPDMLXH2D8=;
	h=To:Subject:From:Message-Id:Date; b=F+HOttHbIl9Smb9tmYAi86bVEI/IGw0HV+9K9/TMQMDjmJk5PdWeNMYBof4Cx8vxBn8nLCnJqH03PLghM9xJoBpaZS0zF7hH5mr96GVlTfPve9YVxwVnxXC1Kamaf+sRsl2s4cwIJ1ZKJ4X7ss7Z4vbNYHR+pnaGBUZQO2UQL0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lue9vRnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lue9vRnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4123C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744780793;
	bh=2cxfndtlsOYtSofv+BG0HRQlMpFF0fi+eHPDMLXH2D8=;
	h=To:Subject:From:Date:From;
	b=Lue9vRnXtJm9Df8GgU0iEslcVFnQYO0WcVVD4XhRZakl3Ix/EqD5dH44fFm0JXkW8
	 vFJ3cH/Ikh8mZtUfJB3UjwOkdfZazgyIqRFeApSMWRhNDN3F29g76DRVcyAIbrAKhY
	 1DkXRG4+uzFgKa/Ef5yYL0XOdNCMTDNXzsghnhnCkSm9241ZZpgUnivSlWDuVwmRzK
	 L4lGTyErSkDT3MmneyZbq9zqVoDYcptE1f9rZbSugOFEEgFUO01Q+n77gQ/Lt6woYv
	 BaSlBYOLZfeNCWnN4IaQxnmEGCxcG4BUPNUJNcgUaXY9bASdLJPVnZMSbFancRk6IX
	 eMGscsdo/ctwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D7C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478079360.26752.12566649018202714113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25116cd899f3e00b85ac0c63155b181a0d3846631bb8202b82f2a40800d00255
Date: Wed, 16 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744780793
