Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E2D32ED27
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777394854; cv=none; b=CxhExGvOzyuW+MjvtKvNXG+SaUGJRGVoRKqxhw7mcGwwyj7BPY/WB9tnb8saWg8TXDvvH1n2nN/QdBop3YWZswqrJ8Q106rYKF6Z2MHYTGDTXCXVMMLOwmj9h1qmQSXIZeOU+bZiBW8HY30zVSWjd/hGLStyfgB33btVm5KKGr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777394854; c=relaxed/simple;
	bh=QMVDDmUF8S5/duUZRoMe3MZYKpjpeUHocHXNIjsgVJU=;
	h=To:Subject:From:Message-Id:Date; b=TV+tyRqbqEyzZ+SlSaV1s84048xo/6LTld+ElBRstaC/rPTfvLLL5Ed+1SqFwHeQ9GX/41Pu2UwXe93YRDDOQNZZqwGpeWZcl0jyGZcF0qGwtokr8ja191Ii1kfWL+2PtsyrUQipxCwhKA/mLd9rTKRvIk9+33FxsDiE7ay7YL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnW87/Wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnW87/Wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF6DC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777394853;
	bh=QMVDDmUF8S5/duUZRoMe3MZYKpjpeUHocHXNIjsgVJU=;
	h=To:Subject:From:Date:From;
	b=lnW87/WzqdRHON9Fd7N8w56ANTT3cwocvqed0PCiPhPu3TN/dx+0GfdfU1qLo1QXP
	 u17Oaa1ulwB8qyzgNruj5r2tXQrlg2VsqfSVnZLHRS0PH/rYBkGPurJ3FKmQVmzb1f
	 TUhljq4yTReW/KN6NHz1eesbsQQYlOoqmf2FlAXwErJjeC3Yd+v+hz0br8L1ycWWM6
	 Xn3Wlpa0vaDLyUbugcrjoWOIILTZpfkdI8iOAO0y+2MZEIt6ctFKDXUH24jL4iaRs8
	 58nZiiKGByXpW5/tyeHRLQBVsa5/uI1hIq5AUHsWbl2yA07mkdDRN2H6eLsIk/qMek
	 xZ9ETqUKnmvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF870FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739485368.20314.4101976545440194078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162fd9b151ccf78cee46538f0324eaead13acc1af429aa75754723b2937890ea
Date: Tue, 28 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777394853
