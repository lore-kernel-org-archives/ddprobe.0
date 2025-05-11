Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E21F3A1B6
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970194; cv=none; b=eI9u5z/UCA2QvWtErxe4QnHCp9c9wH8BQ3UM8FvqN2JmMkUc4ctxhL+fvCWxHf8p5U8zPtB7CcAwZpcMD4q6dsnCMQQMELerJcMz3IPOUzog1Q1XnRP+ThRn4oJruRtaO5Y5o5EYFoXMyjIi3CzPjxxDEr/zGtU9sd1g21qafZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970194; c=relaxed/simple;
	bh=ZI3Sg8m7jsf2CThmWDHZBuayDpfJlRtk9frx3EJz0Jw=;
	h=To:Subject:From:Message-Id:Date; b=UDqLBHcLCyd+k0HGbbkv5mX4auMOdb9Khb+4O3Qz4cJRxQqsVLh4F5XoawrQu7mCS8r18A+kFUdumeiFotWAQb2iSu8RwjITCQKD1xb/oWZf7GMIGgnalVcROA6jjYTwVR3u4flA26PLRAvWc+d0KsWHsm2S90JvtVje/1dBWFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6TgPn7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6TgPn7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E543C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746970193;
	bh=ZI3Sg8m7jsf2CThmWDHZBuayDpfJlRtk9frx3EJz0Jw=;
	h=To:Subject:From:Date:From;
	b=M6TgPn7ipu4dFgah6b2svN98vJ9yqBUZw9ckPoKicMjeTlB09iigNc6k8+B926olV
	 9jqE023kJhtFgABfvoL1rfaG9HJBL+SieIEaejPpVXAGyrwLUTT39/9g5esL3SInDz
	 MP1bSwapwoiNN0616/f8YfGHlM7ynZSRwYEvVnlVE3sbswYFfnZjly0rj42KtSwIZb
	 Gfr9vAGTJkm//ymN6dS15NtwNQmon4+q2m+hrRVy1DDmKLkODm5dM/Kf6aqwOUCbno
	 +d1cYw3B8Xc4NbgQzHopSth5hcBUBwVMw2bwWXSxPoXMWUAvbku1THwpHjtHgmbrD3
	 mhzW4Ux226DPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B0C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697019357.5695.10602811131493616741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37947bcc63555bbebd1575af6832a2708a8491d84168117df3fbc809b7741e8f
Date: Sun, 11 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746970193
