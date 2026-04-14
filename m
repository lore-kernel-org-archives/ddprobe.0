Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F2C38424D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776211054; cv=none; b=OuXhJPF5GRWozR0SvL/DeHX4O/HCjkOR2aW6nuFf93PFMvzPbbcWel4O6Fb1Loc49CM/DYFkFdEX7DcQFU7vYEXFSOHSm/2hUcUe7IY9GvSbHefbNuFAQj4Ct/W9Oot8j+8WonuZzvLIkXNZiN5IPDfELh2Jv+KF2eH4AwaP5Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776211054; c=relaxed/simple;
	bh=wkVzs/z8CaEEir/mIduIFeJWu0SqjngGqZsAcn+8XV0=;
	h=To:Subject:From:Message-Id:Date; b=k/2uXtetLm6lt313ouvZ/hZ18aIId+7nu7EfC9gugAq2SYJi77pHtp1YMq1nOJEis3WVFdyAdA9UJe9s9ez6IeDi/l64iVNN/DJzB7b4jiYTPkWtRnfIAomzw3iTUmwVUNXWaY2U5PsfKlJTjgEH5zhoWGy8m4bFDZxeK+RpFWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw0lyLJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw0lyLJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE77C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776211053;
	bh=wkVzs/z8CaEEir/mIduIFeJWu0SqjngGqZsAcn+8XV0=;
	h=To:Subject:From:Date:From;
	b=Tw0lyLJimxeZ6sNO71nP22QL2HT5CKFhX4Jw5oqLFrFvHnO1sFMm6lCFNJhMrzvJo
	 63c4gMmUYaMkwR6hEAdR5+PU2J6/j0fxFXZ5QBscAWlR0ldq07f+RQeOArQy1B+orx
	 OQb7Q+Xb9impj5O3zE2svFvu9tcncv8cEFLNRXIAJDTJHGvLTUbIOniotfDvPPdt3O
	 kT7k6PPnhx4LHQYy12igkdmWNt/NYRI00gEFXrxvo6OoILhZHSWAXy6Dv/MSDqreNK
	 wBCM5nj0ZUCkmro8xZA2bfP7e7kWNru7nmIXSpIIZT7LadTQTbbRcloiIYBwED84K8
	 d0e9+2HRxwcDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD80DF9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621105368.21305.18233046951904508834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b180fd512c80d1a8ca53c4a706b0a45966837141bf7203e496e13540cbc125
Date: Tue, 14 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776211053
