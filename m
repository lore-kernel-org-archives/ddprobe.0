Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C7264A91
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739541534; cv=none; b=SKR3S+nD4xROdJcokGG/ytdlqBPeKSmJiuLRczc6JGMpP6iVE4kvMJ9ZxGONjwWAYytYiyLicy0+5nbjXkvBNeQnvU21azD+qMhRWeCH71l6e8INmFonU+wzgb+Tu8ZKeYAvvxNm7hXXvQJAGtUFZ5P0GElXY3eWUOy6zXJALfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739541534; c=relaxed/simple;
	bh=+IhwA+q1f4v4jlVZvKi0AAHphPM0CG53FVovJlDto0A=;
	h=To:Subject:From:Message-Id:Date; b=tehP14JkGyyEqju+93orr21bW63SyfV+gXCdJf3r61ghJxog2zebf1MsTFZ/RySCgj3JMYucqxRpEsPip8DUnbj9eaDgKUAnEZU1a1TP3msYohfnaPFCVgW3U7+dCB3EnvEvzfc7M1Vlv3e4yWxgvAX7xW6ULvmeuqitRYsjEUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJX5Aest; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJX5Aest"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F50C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739541533;
	bh=+IhwA+q1f4v4jlVZvKi0AAHphPM0CG53FVovJlDto0A=;
	h=To:Subject:From:Date:From;
	b=QJX5AestKHwFmJ4dzd0z9KHTLfm/JllB2r/9lJ1qRKmUv140ppKAzO51CzK3zHtNQ
	 8G+KjbYDyYkgf95ff1AvwiWxdaLVhki/TSh94q+gK1JYp+WMes4UJ9k5Mcb0EQI5su
	 46A+q9kWaTnL7YHEXO3S3shIX3C5dVYYKLrE8eXeZX7UkWVafhz/I9rSwOy0uaVx2F
	 XOrsUgOqBdPXdZF+FjnR6Rh0CrjSlPaR5ikk9Wif6iAiaK+bl30N7jMd5WI6vDIDwW
	 /Xee5jJaUSXi05wTrRtNIx5dlM5z5t/+6yjPJ5PAb0N7qaoDVmXdn9X+Ri4ww30iDU
	 ajOZjQOqZCQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D9C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954153359.15500.14009821039590037274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e3fe45931576b7d1e3efc37860867d13c8c9089c7e7537700782da9b104edf
Date: Fri, 14 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739541533
