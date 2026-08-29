Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D19C148850
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787997634; cv=none; b=TrhDluBfW+5U9cT4tA0twHPWjZ76VE329HevaOA1/G9UhU5q09pOS1TMF/lWq7lAZpW9D+brqNnr/cI/+UCxcRd11lTvdntOeObCXaARXi1FHVVL5EK0dQlYoBJMOtfMh39e7eHQwIibAhg6QTXbfAxg3BHnKaQodETpfzDEXVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787997634; c=relaxed/simple;
	bh=JEkiryQb2IUsZ2La1w5HOuNDLrcmlCRRcN7K37VNeI8=;
	h=To:Subject:From:Message-Id:Date; b=GabHsAvjAcNWMqvYH6228aoE8WOOY61DajRVgUxK7XwZbIRL6shomevP+bTWNL8wtolbIHx4AfCUwGjGcqwE0zAv3D2VF825Rj/jt2cWtBrp/tA1phmSAu5zZNFm+WboTxPTd/Pd8Iu6b4vQx+3ZsU2rLC4zoVCIC8bhAnOUo1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t15zixhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t15zixhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9FBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787997634;
	bh=JEkiryQb2IUsZ2La1w5HOuNDLrcmlCRRcN7K37VNeI8=;
	h=To:Subject:From:Date:From;
	b=t15zixhMMT5gPCHVq1cH0wP2WqtIFDkP3mNgPYLbVICwqC0ZubLO28uMrNBGDP/I9
	 7Ke5GjLtVGjEl3VURNha0Nge57183qy3dh5AQH14uX6UVe0MP+WZ8iV5U4hh0W/FpI
	 rUaQhBW1ePCEzl9V7FNa5hYECKjzfOmnd5hi36qbU1MrCmDhoHoHMcRstr5EiqsjWm
	 F2ux5IQjlbspGlt7sBqFNzTr0b3uY9oSZKe6yn5gtZTxi+RxKOKM02bGXmbyk3VLwt
	 Zv/uylMNAQDZnvriDvHd3Bf+eo3YkodrPsRp1vDNyaegqJEuHQF+/+PXpJwM0hw2jC
	 FNm/1wePmS2SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCB2C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799763374.9367.13330148541621827244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55391205410e9b67f46ce9b696c269d0c39b74e482420bf4ae1130315b819638
Date: Sat, 29 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787997633
