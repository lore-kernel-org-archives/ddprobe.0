Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0102F7EF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782460654; cv=none; b=EmcOV1wF8muKjiiDDZxEUrWFq+L/Nblf14j53DiHFfLfbt97ZMk2u0Ah9kK+HROCr5ADu5tFBOTqQf2w9SCqEIdoo83ylVMTyLbc2la69PLOaxDHinQngf06nCZMv/ojpyvKq32lAl1y1iu8tpfninYxehAeE7B8mfmNdmPLv8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782460654; c=relaxed/simple;
	bh=Xl/LXYT+ikXpCRGIhntR1Qgc39lMgxQVZ/BuDOg/FrE=;
	h=To:Subject:From:Message-Id:Date; b=Xyl4OvnRiIgcVBjZ/zfGKf7JZnPxoRRICYM4yQH85+T5W2bDI85cVuN/20eTeQPUCnvCb6IalNnbbExM8U9eL6E15IXCDyq9ojjFYKNAv7lcrVcTWVL4GsplPBMBW+uthdC5fm1vToJqpiRzvUTO0LSh2tj9bC1IKN+hH3DampY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/pF6TCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/pF6TCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCEDC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782460653;
	bh=Xl/LXYT+ikXpCRGIhntR1Qgc39lMgxQVZ/BuDOg/FrE=;
	h=To:Subject:From:Date:From;
	b=O/pF6TChYjAEQ+ZyKv74GVemo7iptaj0h3/G7CnXTsb8LM60fl6Ap8gEWtDfBxAEW
	 zL7Rl5ZNENkd27Ab+uNkfW58n7G3r5GxCe+FiyeU/5yWXydRLk5IbLIC0SPl9exRNX
	 GykqvoY0C/LtRh2JD7NdjHBqRdEe8HskvFvbvOZDdCVR+s2QxTAbW/2YIT4QeDDuG5
	 +edgzKmgErl5p+1d2emn2ly4X+C0nyZpIiwCg5iPRFM3HZyfmxQEDU75V1Jp2NlvS1
	 rPePoRWSjFnVbPX6UHJcKl0jPsv38pPSCOM1qCy6IA6DSKPaSI+aSXxhP81Ui4osgx
	 PKFTQPo+1DUyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29D2CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246065372.1467.16289721449538507319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e950c6b54ca958d399d5832da9de49edecb302939685163e056a32d10c2768e6
Date: Fri, 26 Jun 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782460653
