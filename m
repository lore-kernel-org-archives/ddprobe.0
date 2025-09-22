Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDF1111A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758511195; cv=none; b=SnoCabA5HsdvIY7k1qLi+SLnzTAZLWjtVQc5HoiOUJg6uCCoieB+OMYYfRQLi/+0EYOUGQcMP2dhSzF0EDUFp0q6LfX0IMZP/2VVjrGQUM16Ubl4vYQLYIb+9TH4A/HT/xm3inaw+0KW37i7hj3o+pgSr6/ZgN1D8/PK/M2x75o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758511195; c=relaxed/simple;
	bh=5zB2vBN/IlLvRLN+0bkE1qXpvrWICrK+zSy/WejLNio=;
	h=To:Subject:From:Message-Id:Date; b=Zs9IUdA1ICIJHX174vfIjPBOR16/QJ/fU1TCwjmrtro5Z3x5dxwTVcr9HdGMv7ToIpoi9khYz960NSJ9TZ4Lyr6mnFY5MJ4mJNi6Gq55sMRV8e+O2twMgoZam+Ok6hk5DrwsAOsvG09jO2wNX7q2Dt1qcFPpZNTa2PbKVO/hYP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBwmN4eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBwmN4eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F065C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758511193;
	bh=5zB2vBN/IlLvRLN+0bkE1qXpvrWICrK+zSy/WejLNio=;
	h=To:Subject:From:Date:From;
	b=fBwmN4eqRVWRc1aYSe9kDZsa+w9Qk1lDSpCztoQxJlo2/tj/aMZKHW9MX7e0YwgPD
	 rkqoLeeK4JYM0RgqcBcH1BphiEao9jwxrYt5QOTS8/Wy2fLmMDREiUpKYMblBLsitF
	 bXyxshDkC1PulErCgvsaPfIMF8PIm/rFpMoMwXN1lLX+oz6XJa8lqnQbQyriJT2QEf
	 V68rvS48ILeMLAh7oEaCYkwgNaSNcYITqjUDOZtwNBGZavWbs6AEFjNO0W6Q7DHNjM
	 T6+H2HvLza6AKYF0QUQcDnJT81Zz6pXgZU6UXxQnEemH383romP+sQxbCaZChiPQoR
	 VIaP1D7Y+sIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E707CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851119357.20774.10951765198283455045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014868ae944c595d484e188ba99601e262c91b6de1fed7f65ca34074bda823dc
Date: Mon, 22 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758511193
