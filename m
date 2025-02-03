Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D21D7E50
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738571754; cv=none; b=sB+XWZLHfYUm7CkBUDY1AeIPUTq6/bx/InIb8+RTxfZJ2piDT8Dqy3H7LkpTaBludH92Xl5ditavoIBvWgMUuQuVGOb4DcIVrWQW+ahX9ntypK5T/gIG3sHf8FWBtwQ90MZlXFVfYuuKwdmTeLWffZzTHYXsvxbJM65Zrq05Ix0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738571754; c=relaxed/simple;
	bh=1nUMjbaHizG9Pj/dC8zMKIK4V+uf0cBbol2dixt54rc=;
	h=To:Subject:From:Message-Id:Date; b=rySxyaYU6PtGwa78FsBeGIx4leDbhIZ0jtcb1hUaVSxs66UUx6AKe3Ab4f+TtkCZsdUUmGrIseyjeAR6LFRc5EakqMHk2kTk/hPDXZ8/37jEwG0X80Gl+sWEionOrnOUN+tZKKE48HxKU5DbTFTNs8vou79OkDy9Kwh02yuwtNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDT0cM/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDT0cM/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB824C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738571753;
	bh=1nUMjbaHizG9Pj/dC8zMKIK4V+uf0cBbol2dixt54rc=;
	h=To:Subject:From:Date:From;
	b=hDT0cM/gwjptUXRJArYZDGrQSqAQ1O4p8C8tF7/U0qYYOZTRQvBZVlbvR/8MksgyS
	 bEGGlq+MNmHJqir3OjLrwbaJ5sjmNtV4rYcPiJjgkq1QuiL7yY4po/16umf7phB60l
	 6uL+R/xqK7VTgIxACpOTcfG7kg/NLd1+XlX3ZCLoch13I1mlsZDKFHh5cp1Gm9pPGj
	 xNqWGv1f9z3WTHCvuBR41QC+Q6FXflqRAjC+gIHzOPHlURJR8cWkcPM5SwpeogdC94
	 6UCiC+D0qcLgnnl0hd1EFk+h1O3U0QCFrgHfhppQCRUCy55zFXYkNalWCdCzoNnhvh
	 J4fsQ0tTJZCnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF93C02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857175364.6805.13565908881504833646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588fff83ff15db03508cc56cd4cecae0a9a543ae3a39c0863207af9b89e03b10
Date: Mon, 03 Feb 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738571753
