Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E8D3074AF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750832995; cv=none; b=eGjk/nK5g5cDwfy39Y5DLBWFgcidkKpcA7Cfbpw8VQLP6bGjzJWL2+y704NsGj01Esf0oKc5d/zgR5d1ng/mt9iQCQO87hVe1geoUea9pz8sCZnk2iPGqED/qAzR3Oh57oY6jnjI37uN5HqMurni0+exzmXqye1QGoDoNlE4c+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750832995; c=relaxed/simple;
	bh=aA9r8ZshSR6VbY+H8jGmjM1gTmAmPbkjEWEi2nAb1i8=;
	h=To:Subject:From:Message-Id:Date; b=Y81PTETM6K2c0e07d+A3sagaIh3Kdz3UhvIKcxeaEpwc1c0nV48eiIOyVN9oKj1lhLp7TOCfZNmB2UD+mh1VASmOfY2uYOZLU6RMSQMCzGw7w4ocNMFkuiS3riKeuC5f4jJEowPp3aIThkYivSLRcuBEAkQ8IoeO36Mk8sdRhYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYDyEBE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYDyEBE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4313C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750832993;
	bh=aA9r8ZshSR6VbY+H8jGmjM1gTmAmPbkjEWEi2nAb1i8=;
	h=To:Subject:From:Date:From;
	b=XYDyEBE7WfqJ2HAyXvTOZFdVdwoCwaJ7j89K5PwSxNCGdBp6GMaez4bseyY+FrmWt
	 8xBMKO0MpGaoa+3dqDIfGSEKySga0IRJ9YgTGwcoAOcIllkbrJ2r00t9CKMLtKOgDG
	 BztlNlNhIsOTH9/bVd3qwCOqoxQEj7LZ6+41nwnGIyIwuWFIIes1AjSxKEU2H57VtK
	 eXf0WnSgC7MHw6DEIaBqbjGoH3l+0fp6BlXq5qbg2lnpWdlmnBVenHbcYiZ+wm7Bht
	 woqfIsn3EdcMHNtVB1OFkJwySgI2b6/MjlNkNrU/1SYB2GpFisFFTq6cQXlFN4HUZh
	 9CZuHWzl5szVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F627C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083299357.18407.17936103485301465191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c537268632fcc9d756faf975977ff99b7c3f7a2ba0d686776c212e48bd30fe29
Date: Wed, 25 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750832993
