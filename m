Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F49E1F7085
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737489354; cv=none; b=VXQ0ApcVZVsIZm7rnUY0Lm3DyGNO2540aBs1hhFKtTYlAsvr0810lonjGCsEJCK5mn5+Lts2gBy91JKZID4n1ydXcPKe7gvhcvQo549PksXvlGpari4GLZBflRwXMA6c0FwhPGw6F5Ru1KSkKlzYyr6CDXx7rsnYKmaVToTPZWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737489354; c=relaxed/simple;
	bh=K/DRkTu+7Ar5+VvGOvc3Ew1crz0I4gW7cZ/c5iNiUOY=;
	h=To:Subject:From:Message-Id:Date; b=fSbuGUthHqfZOmQ1iPld9oYJIHiI0SaO0IRZq+hMj/jHxt1t5JX1z+fBz0Nm5qN/wnRX5A0ijY7R3mA3TYjo/koKngrYERkMYVbjPGH9h8FBEQI4+C8nbTi7BMo+5IR5iLh7Z/YtmHmnfVb1s+XPZlk4D2ZSyWwlUEX5Lc1fbn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjCjNOob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjCjNOob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE92C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737489353;
	bh=K/DRkTu+7Ar5+VvGOvc3Ew1crz0I4gW7cZ/c5iNiUOY=;
	h=To:Subject:From:Date:From;
	b=PjCjNOobJYc+T9rfMZpOzMdWaOKEMchEAFUlUQUkT6TvVBG/bvLWdATUSk7I76oqg
	 ZU3IJNHDmCCJaqfio4lIxTmA0+WlXeJp+moLmZB9oZObGrLrtPa818beWFzWhnWCtK
	 WSGYdlri+1X3r6fbwloIepxuLHxc9xB3bIQfz46Ckmh1xGqBLgiaqpLy56c98tpBv4
	 GIvzCCTIO9f4ckRBb2v47ENx9tC5XY/O1i4FpU4chOqeRT6MT/9LI/dhm7tJlGvbLw
	 MU52kZr4pYrW2HIIGR/D5uIgj6wil9oEdxgbaJUd3cJIDIH2XZRwetWURfcNnIES0/
	 XHvk8SffwMW3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09C5C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748935364.26682.2863893782492212507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f086458f136ea7c86fe0352b46173125ed48a1551fbd46e0445741ce76ff0512
Date: Tue, 21 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737489353
