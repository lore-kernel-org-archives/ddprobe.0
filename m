Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B64C6F
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710622697; cv=none; b=KX/bfNgGGPlsVUd34/KcV+1iljZ8SMKY7LRmAETDWb8ispRZ/0nBpcVQmrPjCMPQAveZe+KiMbwLuf9Wa4GRGloBA9r3ADhbXcQGRX/NWFz2lKxtJGLwOPWcHim+fgJUpP+h/qs7TdI21PuLOeXq4kZPl4pktUnl7gZQyt/DiPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710622697; c=relaxed/simple;
	bh=BwKdL47J4Uix1SFoWGCV4WViCEImOn+C6aPHER7ZIpM=;
	h=To:Subject:From:Message-Id:Date; b=A6eCYpW8kOItC7K0ameUuxUnaVfU+BKjq8wRQ4XsjrB4bLdaHGnJZAbg0yWlchLEySS44nQq4JtK4RCwqshW6aXReK+zBCxtQdz0/iooZK3KASUVn0+OF8wQTR9tidxr1t8nH8JYHioMDLjMtbNLfeZBe5tK+nFFvn4+ps5qQ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlnNvGP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlnNvGP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DDDC433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710622696;
	bh=BwKdL47J4Uix1SFoWGCV4WViCEImOn+C6aPHER7ZIpM=;
	h=To:Subject:From:Date:From;
	b=BlnNvGP5wwsURFKGGqWbbhqNrrhaQ/8+/3YkeGg0R+YQ/Q6XXKL1loS6wwK7i+Pta
	 lc3f/h0y1W+Gi3ZCgmGOrPzofOE3pgHP+Md/yi9ugf04SKp0AKQa3NP7izCIN+p4on
	 yOpGHzn4TfhfNv0hAZhlFkjuMVMXDh/bxrszRletC/WrlnOITUmTk3oZ2tatK6OgQG
	 FDjuURe9vLfpIOvevCHKtSn7cywNDbcoAywJtmHvvVQYJ5g61UpFBzYc0KDyPLtXFc
	 RgpEOIX/bfF2g5rnEDplmET/Fzjr8555UVdpxEfi6Qw09OO7lpAIDOMayzl4q+uh77
	 xuN8xMa4r/r1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E14C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171062269636.21297.13432369318255767568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62edfc52c181ab8a372ce747cedf994ef129f7a6dffb9f7a0438846524bb3676
Date: Sat, 16 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710622696
