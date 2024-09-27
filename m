Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303042B9B5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727453754; cv=none; b=bQPb85n0OLOJlEWOuenZdQ12jJmDeAeZEtZ9IzclwS4QCii5gHJmF4sN/QYotmYX15aXlcvhwRQK8ttNFPR62PKRk8HH0i/n7oePjKO0KV0kP3VsFsWOi4TKwO8mFz0U2+1WGExO5LzdNk5v9y8DbPf3O8KNSd4p2usHECz8CDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727453754; c=relaxed/simple;
	bh=nZEQwg/Dn3Jgx0/WP2Ks5EQLnoMW4ki1ZNvajk1QI0o=;
	h=To:Subject:From:Message-Id:Date; b=Ncs/bfZpj2vihJnImBCDjwHVJmwhws6f2W/ihscMF+GUn853Br3nuRc5/g55fHWTR5EcRsiIyYXpEMn/QbNsmCtRyspJHqxz1w23oDYSoBMaotVHQ9jYEyrsRm5iheYi8BJNGCM3uv+a2AbcmWrpex8IOzji/AYrONF7cjOVoWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liYgmJXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liYgmJXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE8FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727453753;
	bh=nZEQwg/Dn3Jgx0/WP2Ks5EQLnoMW4ki1ZNvajk1QI0o=;
	h=To:Subject:From:Date:From;
	b=liYgmJXVgIkx4hIJHVRnxDAXJVOQ3agb61qyJuLOzEqeKWLfN03A08xBObHFMUe8i
	 YypMka06ZNYx77NZeiepmpBGGZXlUWz72wVw9lcflJ9JQ9awb7xsbwR7Y7va+WEfsu
	 MK+eX3fA447pVkWqQbflVFYti6zyktvh32ZSodDfcpencQOQnvqqXDQF4G6uZQ9xYE
	 N/QeimWdFNAW4pZ+KCKq90NbR6E6aMXapt+7kjaO6csygIkog6AbdMHK440WMgVsCM
	 qvfp2IwfhkDkP/kEJ1RFj/TusMmQW793W1xU9WwygcvYp4u2KQDoHnpAJBoMKGiOOE
	 5ZdndZ3JznV4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B95CDD1CD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745375360.11135.4791024691715542885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a1c164fc5e8a7db43a4874efca2a1441c6696342a5c98aab8d9a5e4640a9d4
Date: Fri, 27 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727453753
