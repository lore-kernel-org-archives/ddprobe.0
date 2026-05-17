Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817F1364042
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779022835; cv=none; b=azDO+Py8GcdOI7liM+ZvlflWpM13fXnFTRjwiif/1h0tX+gowJ/uCZlnxhyJJhl6sEe2dwKK+TYBRtA7oxTEi/+UOr39QxK3kBHC7FCjoQFzG+z59ztiPkkipyuVpq3O7RktDiOjCK2Q3MedeA0/s2uJrX1BQJJEAnBiGrFhyeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779022835; c=relaxed/simple;
	bh=jPAD1Dt1jGtCjoxlebYOTEjNuXcQaL4B+HLQawEkStE=;
	h=To:Subject:From:Message-Id:Date; b=pkp40VsEYHkzbWpNiOhc31hF7x7/pQB8mx7pczwzqU01/n7/7IAVkTHK9YrtGz0AyOCLFc9bUk33ybN0ZaJfdZuLLqBcWj2LfSB2DpTemLEh8YHsjA1+sGWRxsekwLVSIVolbAlOaix1Q73xVLOB17tLOzuDZMzEbj3D5KxtIC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEgZemZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEgZemZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3498C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779022833;
	bh=jPAD1Dt1jGtCjoxlebYOTEjNuXcQaL4B+HLQawEkStE=;
	h=To:Subject:From:Date:From;
	b=OEgZemZkWiPuNdXH9cKBR6RKpup/30uVZD4Zj+BCODOtAWAC4PxlnmYwKcaTxmHi2
	 UY4aUGVfEkxp0Zt5a52J3XoaHFFzDa3m8Ysp3QZrBApgPLBa7piemRmduq5ZG49Jc7
	 Stj5LJFo3T+fdihngs4vH8iueuuQ7fsbHwQ5mOUnKYOwVXuLzUSLaNBLn7d/NuOaWQ
	 woINYjNRGkJMI19/ZWOUxPq+QSn93CUUlfGUWpNgmdIsBNnE7Tq0RDzVlwGjexUJbI
	 YBbwZ8GV79qVVhwzlUghwRNs8vfYnMIwGrb4TTc4lXo3ZGVrGVJ7B1C0WyJH3PyuwM
	 CrxiXAgIQT1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33FCCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902283369.22707.11641730488254007716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41742c109d47de6b3259857976a6d1ac1db8e1233be4e570d12a484b361032f0
Date: Sun, 17 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779022833
