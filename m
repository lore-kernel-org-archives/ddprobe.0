Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37A204099
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348354; cv=none; b=uUtO1ULc/0t7BlPVSQ+EexR6BwLaNewrP2zaOnDc+F1bHZQfaMg1uLcyAA4GhUFn1/Kgh0Eq7ZNXxsbgxOPggLzhexsyg2uQAJz9aRW7vd2PqJCAFCMSQ/bxrLEQLh9Dg+iGFrzSrspVJNYVXoFkqYik7bg9L95jOMchuxmBXmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348354; c=relaxed/simple;
	bh=DHxKYKmCvPSD9KvNM4U9sKgLmCKHlEaZrrUwpGUQzd0=;
	h=To:Subject:From:Message-Id:Date; b=MhXAv0Spw8BeOvSi1YB6Rn/UG3dmZs0l12qzUn7RfRRxYd8r8j12ojYHVHB3QDOH8pjCrcQwyz0VlAXFCWCGN3rn4c/y6hvOXIhegaodYJSYAP1daky2b/KwRKAAVPv8uzxgnV+zL6itV1BjLAIfpWBylCoRxTJibvCYyUBnj7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZQeQZYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZQeQZYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AADC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734348353;
	bh=DHxKYKmCvPSD9KvNM4U9sKgLmCKHlEaZrrUwpGUQzd0=;
	h=To:Subject:From:Date:From;
	b=NZQeQZYiAr7tG2iWeUbXDyCNKvprEEpjA4RqURJb0YT6H9e/r92E0eboUQSKG69Po
	 vj/uxR1bxK7aQlmzSoB+CkS4/snlwt4/Vhp76a4rP7DTuEpYrZF7MzqUSijRH+m2VQ
	 KSFLJL5R0T16Kf+nhgxIzgoGiwA2cTZep7NOcBy87HO+P4bxx9TGHrcvbbNYKQqRsv
	 sdRIR5zBMLsCUcCZL5X62mM/ulnkFR+oUUqd+EY0fEcw00cHfQGMuMwwb7vE5peWzM
	 SUlQBBl4EO2eesD4fhk9PqdUqk1JRdiDohgp72401KkuuvzgauxC7YYL9eiwJiXDvb
	 sKXLfrILNUuiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D6DE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434835366.20088.16805788896366461258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3441bfcb0b4a745cb91b29206691dc6b479feb2d34905d1f50a101387ae6e24
Date: Mon, 16 Dec 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734348353
