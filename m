Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF94CBA9E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878034; cv=none; b=PaXrVmCCk8zSjfK6Unl3dna2tHH/GoqO4VYtmcsrsOisedvHIhdfVarRXxmuUXruQJ/jRAYuQQc7fh9G2GzEddaZMnt5jb7w4fV90XQ4FRZvk64vIiYnfbDJdDDENsmZLQmVQyRBDYeuIXvgntWhDCvJyXyBIZGkc84M6DoQijk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878034; c=relaxed/simple;
	bh=nWGWTRhXuFktbAVi2RsXPbGa0kARxl9FAriex86Vg7Y=;
	h=To:Subject:From:Message-Id:Date; b=tPurxmNFW+HcQt83XWhjr/gnEYOdgEfy7qk5v57hxiKZaMSwNl8+ZrcXKM2jKIhqcDBWZuaC90qjoz8lQBhoDxADAv7kO2enbhXbn3wOTGJvMwksg/2wiQaqnmJhM6bAJP9nhcLS2fRjUVqfuLYbkg53Ab6CWeGJUY/sO4d0jko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzaeZEjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzaeZEjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D570C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767878033;
	bh=nWGWTRhXuFktbAVi2RsXPbGa0kARxl9FAriex86Vg7Y=;
	h=To:Subject:From:Date:From;
	b=hzaeZEjJdyzY+iuQ40NQvhZWw1hnfD4RJc3KWNKpLcYxXtOm2bLnFRi1XnH3EUe42
	 UzomLB33RMo9yrrDZnnvoHR1PRtU5Ru0jJBCxOqkJj6BEbCNgwVvHXNRT7iP0b4rXE
	 J9QDLJWJdmOB3Vi/JUwu8kqUO59EYR30CDGVP6GAZOWj+gkL7AjDWC5PYFIhl5UJb6
	 /QYyG3Ry0US8Q4Dd5j2NX4J4qM8ul7HT3ePTUn+UZnWLeTT06VBtVn5+XPVhDPJuKr
	 /wpOLZcI1RT2bWhvk8Y0dFbqLuu8D/Z8RlswD7gOL0xNwfQNG1rTjsMlgQ1ft+92F4
	 fvlickIIdIpgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F837D185EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787803358.24173.11706028742637885889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9bad7120015588711254dfa1ed0089babe4332b9678582d4d95624464cfe62
Date: Thu, 08 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767878033
