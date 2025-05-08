Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A254221FD1
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746692395; cv=none; b=WZKdWSUvt4XhLqviNfMi4OPqPnPOa3VUIAZOHZ982mQEdLhfhhT3PTQ167Xp3HJIn1CXICvp05qNfLyH5A7860vFEkx6LHHqMABvmt0mDbm9g3XiOCKWHnj6h8/cbS0Y9Yd/oxKvsDAO7w6NH8lxETO1P69iB4Ra/+Q52ehHiiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746692395; c=relaxed/simple;
	bh=TENhd8Tu8GNMqdfKcBOg4/Nzq7663rY0+yXSzmgtmWg=;
	h=To:Subject:From:Message-Id:Date; b=eueDt6gzyhrwEEy9MWcf2r2QoThmfKZTCxZoi8OfjOGTLJuPr6xD3NbSXv8gH1RTaLAJxHr3XiOo0Z4eCaXp8mbik8Fq393LBiGgRe8RMwjZMkzEvCQniVqRuhvfbqddWuJ4M4dqmXz0fyP+kiioYMdTW/gWcS3Tpei4L5IgrPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3UGWJFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3UGWJFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A15C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746692393;
	bh=TENhd8Tu8GNMqdfKcBOg4/Nzq7663rY0+yXSzmgtmWg=;
	h=To:Subject:From:Date:From;
	b=O3UGWJFw3lBqPMv3OFVABPBpNfhcooX3HwvkIl+GjpIEadUMvbovhD7X9XkKxl9Zu
	 Q1V+66QoS/GL6GfnC6QnmV2/e13nlo0lK7X1va7/VdjLLVJqigMdLEKdr2bc2LqGN8
	 nu/LdCEPBO2Hc1eNNk57ljSQyk1YbafTAilj5P4jDx/7J4bzhOcDuqa0vAtlVN6FF5
	 DRxz6YLAD2iUwxu2NtqhvBwbVqsEmwHIrk7cQaxW7oL6cs6KWJRuPZHJpWeXDamwTe
	 GhueFS43On45/9wSgI0zo1qWoz+xL1veRyjDq6lS8upViWkDThy4f5RmVPmXupaumR
	 LgumPsTJkP4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEECC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669239357.3138.3321951835849034493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa50015f945def78a7fecb8e97c8b972ebd42fe5a72682a01db5bf337a992c8d
Date: Thu, 08 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746692393
