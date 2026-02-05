Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3982DECBA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770290634; cv=none; b=Y6ul1Hh8t4x8ePIg9M6Y545b2zMVE4cuu7YjE9Zv0G/3spAl6LpVe7/dT4FgrG17eXYpUTTNwkotztQeYsp8Nwm5jU+PFAfDECtA7TdVIOSYkTqPlYAeUhyWB9gwKHAdt5pVDQFlLjz/S1PMy+7JwV1B3nTWObJf+/Z65SHfHcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770290634; c=relaxed/simple;
	bh=5hNekHjjKw+MdwaMAF7mL9k5yFPKWW7SF7GfK8Byth0=;
	h=To:Subject:From:Message-Id:Date; b=NYLy2rlkFdhVMcCNzuMEg/cANw2zCM4IjL/Mrc6HAGBtY7Njub5MADOmWMno5BF2er+srjbCEXAVAzjqDLSjzNbP2Pe4/MF0fwBLumNXt1HXx+BoSYAt+P8hD9RwfwybrgEcvp0R4MF/J+U0CLpQbcxJtTXz2RwukdJsqsl6mMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYhjs0Fn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYhjs0Fn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A71C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770290633;
	bh=5hNekHjjKw+MdwaMAF7mL9k5yFPKWW7SF7GfK8Byth0=;
	h=To:Subject:From:Date:From;
	b=MYhjs0FnYD1mCcl8hvt8NlR533mrT4O/UeVUs0H5kVov82MZSfYcy/ycbXDaFTZDw
	 Y8/4t6rvF4bY5si5efLrDdjnCun2CL4lDFNIDj31RY3vji02AKyNxTYQwdeubu2muz
	 i7qxaPey31cX6OyujjCHzJl95yHdyOEAB6ipvfywDjP9UBmYlXAwwjOccILlDzKy9X
	 ziRZgKRdwjhRTfFj0aBw6Zn1p07H4F9ZENA+755dVGZcmJbZQyPxRFFUKr62GIAk/h
	 i0GijiEeBmG31wh5YllVNCnurFY5+PgUfueVTwoa6DYi3NfORk05wqyTImgcBt/pW+
	 +vjZWf/QuDpsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A72EC1EA1
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029063359.7128.11156812421087818682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61308cbb4683cde10732d66369db6b8af28325030f38362c07132669e862c896
Date: Thu, 05 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770290633
