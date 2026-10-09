Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE243A0B13
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791517834; cv=none; b=N6Ci4R4aFlVnGk4UtGXLyhSZOm+J8N6zvOrDZFBKJye8aWMgpvBR1XuuBOH1X8H8l+t9aoLXEd+LsvX9dhhpbg7LF/A4EgdvAX6TOXV3T5UV2gT/qrhxe7GWhsvfUGFAlYl0Eu6y5/vOh4Pz19fLCOyQewbdhO4GDWrUR1AlJP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791517834; c=relaxed/simple;
	bh=ukLqoFTUXQARm7Gs+0f2lVC5Ody/vLvB1WYDFl74lSQ=;
	h=To:Subject:From:Message-Id:Date; b=HrmCcLGQxDFg5k10Kcig23OHpiU/oYRtuNSk8dAX+8z/mee77slu3cy34X1TI+6Hq3T6u6F3K9u28hCWDZMPY1gSOtPngjwpLekn7BRXYL5BdwwB9JkPreyDNR/PmsGQYkQRwIQPeT63eNMMcBAppdiAdmUUFo3OjMsqv6Nntu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cy6RwTMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cy6RwTMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD7BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791517833;
	bh=ukLqoFTUXQARm7Gs+0f2lVC5Ody/vLvB1WYDFl74lSQ=;
	h=To:Subject:From:Date:From;
	b=Cy6RwTMFq1w4PpTu8IyJgAz5GoUzKHyeaiqltt6PIRv1bfY1VSbvCqQDkxBeYIeUR
	 pzPu6kzVpHP3gTNFEsRRyXZ+teVvWgNV7QSR4PqOiesVNdi4D6EsQU+2NilszdIdtt
	 99Bl/wtnmdgcIqSsjvYkBOPKHekZaOW6F4RQZyb1FodhJh4tSyaX5sg/A8AB1JPeDd
	 3LqY6xHTh0oPVtIRy5bHTtD4f7LhatyVLmmfRSiwATFKrKtuAomqvWcmGwx99ceQld
	 v4AWK1h9BPVvxdStZF6gr3a1jCJ0odqXowPYj+DqX5VO7GK4MbhKVnc8CqM4hL+iR2
	 3lfQaRBwUlbmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB75CCA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151783369.23382.2176182502637107251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50435417cd9cb56fbc3617679dd904358efa4bdd02552705beb1191cdd18e6f4
Date: Fri, 09 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791517833
