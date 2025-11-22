Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD231B81CA
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763817714; cv=none; b=iJeZQI0EpYeWVlZmZQKCYIQ1D4XyrxOZ584obur/KxG8Bstt08hy54xqUpFE+G6CGxbdClibOktvy1AqcBiCWHgW0f+7FAMNqc+cHCq4HiHFtC/ecerU0eTfNdbYj3xXz0d82VqFq8dVOiPg2JtsneGj0pmEf+Niq6mCNu8HaZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763817714; c=relaxed/simple;
	bh=EauMpm8mfnXoTGCoZE01Exh9NJkL0OtXyDe17rmFXLc=;
	h=To:Subject:From:Message-Id:Date; b=MlJLJN/rg6PpaYMVBStqI+/WJte06DQWZSjegBl2E+8GaQaEZdBLHs/u3UQ3Y/qRaOS0dHQ+lNsjoZtLjenBxAVkwMHobYew7JMpIaKdqZenSOnkJ3VYWaZiJVK68c9hzFb3p2yJKjHIewdyjpRv+6xaBAeJtq3meQdX3gZjhYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBGDV0H7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBGDV0H7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F6FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763817713;
	bh=EauMpm8mfnXoTGCoZE01Exh9NJkL0OtXyDe17rmFXLc=;
	h=To:Subject:From:Date:From;
	b=CBGDV0H74M6ptk8WeYBYq3Z5fuRZiN/gG3YgBN8UoC/OmEys82FHcWK7gSrr8BEKX
	 P1/UuhYhiMWXlc6XPzRGY5fSNaNhOPSQtfo93SZCUwitS85SCHdWpzRSrNBSVLQ0Tp
	 Ut+uKv9zM/Cz2VEpgxcICQYdyfx3IGUz30/oXc1XGtuAbfEg4etR3q/xHEocOZC8Ou
	 4yIU807sk47ukydvzbpX97KNrkG23/0m3P17PWuWcQSfj1j0j8OzhG3EG+dIcKxR/S
	 Lr5+jGSZosR9/H8l17ZLJssxNMrgG0jQDdE986olSXie9fAck7DLza0MczFJwBhYMN
	 wP2rHr7ADYX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93785CFC535
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381771358.14520.7643603743315519801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866a15cb26540fdad42b34848a08360f078783aa2b98926e67532b26fceabb9b
Date: Sat, 22 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763817713
