Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93771D07AD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727877953; cv=none; b=ZZ/2XxZgLgPHWmgQzUNbfMJwAMuFmlyxrX0GXczEqlEASMKiYK8ZD1nwGnfk2XbdXjxRCMtn+A1Zp3ln2Tt6KBb+3M0G7yp6FfcbRa7AWIugNdSFMByJ8qyae7PIZXAStvhI6xspRdkc5bULMr1PEEyIVXE66Mm/j0uf0FxDR6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727877953; c=relaxed/simple;
	bh=ghsIRN57WoGpJs7q1QXF+FQBt4VB1lSVNaFRhZ4AIg8=;
	h=To:Subject:From:Message-Id:Date; b=O+gJ+ybcP1ERm0p/MlyZl9IjVgpsrJDDcqZ6zNmp9m+lIwMgTHOGdM7mUtVPowJQxh8kXcsTGv0dbnz+QKyWhoVvGqst+ME7NzWSuLmsFwsYnmWU3S5MIfPwT0uUe6lS3rNPD/qXlYFvp3uUQMk/VWjo7hYyfZoMiINqiCo0utk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol/YtZGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol/YtZGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C2C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727877953;
	bh=ghsIRN57WoGpJs7q1QXF+FQBt4VB1lSVNaFRhZ4AIg8=;
	h=To:Subject:From:Date:From;
	b=Ol/YtZGjXHsEUrWqN/5tUcIW3QnE5DJWMRUQaOLuEjmSRiTPUAtMjH88KHeTWUkSH
	 ToOROyVAZmaye+/F5oyANpyvlkeCmmr3CemsEsRobfafgHcN/d+I6VNkx8tnczYXjy
	 CqwVRotQjAfNz4ZCwE7aedrItK5SeKeZd+h1/xoKDWCxmn3sEoQOI/aqN3s00/VwWd
	 Bjzk7rz8bJsN4dUUeFsLwLEpo8SE3qrChJWLPaeRlgJ2voINvsFNrYJCXfpIs9bubj
	 WDv8Tsl4gds2caRmVIXGOWJIUUhlKS+C+L3Dly06+7odcqvydhwBqdxScrHEjgPPRO
	 2l6jbHIW48Dlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BD5CF6D28
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787795359.24989.4234219791948501077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf131b3112f9d94d854971f92ae95986cfa137ee4645006a752c5e071153378f
Date: Wed, 02 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727877953
