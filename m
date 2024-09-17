Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFEE15B55D
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726568754; cv=none; b=nqn19WnqZ7yC8gtoy/k/VNzt/FESi7UCo/Rq53Pca/2sWqIASwjpm6VQtYSksnjWMD1e6nMucT214LTbejpljpH8FiG2/dXwjfLWYQh5BQNMYJIzcErV6GTJ6c/AiO2LOLW5UccT0uEfnhkvT3fkTBAiZBLdH9t1PM4aur226vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726568754; c=relaxed/simple;
	bh=Xl4KutoG6xIcGP7RilJepM+MrYvAmtXfuwIxS9MNi4A=;
	h=To:Subject:From:Message-Id:Date; b=ncfYDw0ufcKlvTnyLpjpWsdyDxo/jk+wKfoRoK+/E3aBFjRsmBplxvzC2MGSaO5qJ3cZvxr6/1Z0u1eCr9T7RvkbJCXNQKfFmYAkw0GUTVO8Yd1H1rrHr8baLSp8prR/hCKn2AInd6Uk8RI6eQcmyyaKd4Iej1slUJge/SOCSlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDqOnI/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDqOnI/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA503C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726568753;
	bh=Xl4KutoG6xIcGP7RilJepM+MrYvAmtXfuwIxS9MNi4A=;
	h=To:Subject:From:Date:From;
	b=FDqOnI/bFQUym+8Q67WfOOEF3nWTBDKx82o49v/iGahI3Yh+O9zO+FkoNfD2pDWh2
	 Z8P0qUy8UlNNK1NsMjGbINCDMiwCfLZZkrRHnduokHJhV5QxL53Msu72IHJI+vcuoP
	 T7A4f+h0ZPTiocqzFZfssR4McslSW5xDH+PkVcl0ME4WRN6cA589BqhRnsHrSfY9Lt
	 epfDdf4oQWCaXT1EVb5aPT+9195r7cuAN+tyHj6E/g/+vNFA7qJwCTjPeQI3jTOP5z
	 Jr5wBt396A0lxmW9wTN4oXdL0rQmsPcqXV24lFwGVxbW9lfYYEUWEkjP+5gB5Rn41e
	 uzNXUwDiMybMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D39C36006
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656875358.28169.16169319568590618909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460a8bd6802f9265c9c12492a9272f4d689ebfd9ab8b346af219683131e4193d
Date: Tue, 17 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726568753
