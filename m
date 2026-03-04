Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C593644A7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772664294; cv=none; b=NqlOVP4tJsUF1GInytQv9vaOgLa/3jYAdM08O3oIy7lMEO76tr99HLQACIGSUH+mgABoJXgyhAEzdXjVbMf5hRLt2z6i4SbjGEu+AOTbvdYVr18l+bt2qFjPHOvgKKhyEtJMX1tqmUp3HLX+hS9Ls7obURVNNVprRH/j1UnEqxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772664294; c=relaxed/simple;
	bh=GpYb1dG7qN0PSS7DUsxMb1t2lsxZxlU9Cidfi1G/j5E=;
	h=To:Subject:From:Message-Id:Date; b=BtwmUUGTQSb9I0t99ya8pnIALbWn31NFSqXzl90EKT6U3UqnWfqkVZQ6JD8OvRvCy4tWzLsLWFUQdqgB3Kdg22iaAaDQ/jE999ICiIew9YHubivxRN0pkzfroRHQ69tOUMJ4rgGEQ3aqxOC+jaQv6kUdqksWpdm6i5HUuD5ZhOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cne06h/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cne06h/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C996C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772664293;
	bh=GpYb1dG7qN0PSS7DUsxMb1t2lsxZxlU9Cidfi1G/j5E=;
	h=To:Subject:From:Date:From;
	b=Cne06h/e1dUBXIqiX+brkH6RsUs9lxs4kR0KsVQhF/kgj9FiwVft9Hnq6DaHFyecT
	 FoJOXodmxO0+XfjyJIy0/jIr1l4RUklARBMRMLYeAHHf3zL/DkRas2SbED3quxeCWj
	 8kUVYHxwRfvDiSWOX0Z2r8xhQn38dnGnROM6d+l4xXSBD6EZt57cShMo1ar5wwbPpa
	 SFl+wpvzGaYPw1gFYUuN3n4WC18OscoCXSGTEI6z+T6347kPa6sFdA1FjU4DEpjyK6
	 TltGcHhbJKJjfv0NpPdROCywVsGdXj56BsKIinD9qReAmjgWYcpJBdAyad0ZXz1UQq
	 HtYCzYTq0FuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE26EFCE4B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266429357.24745.1742353782836537149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8908e389d538f8f401d815337743c1345c6ddf29668e5c18337bdb88b15951e
Date: Wed, 04 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772664293
