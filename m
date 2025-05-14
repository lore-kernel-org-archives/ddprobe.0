Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3250743169
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747205395; cv=none; b=n17J8Qg1bqKDf6NpBfNNlx6ptJjI5tNgzgMWiCHfU5xOZzcU2/436gwrn4jRbcFBq9rin7yT+CAX/64eTwxBJXFvtlqGMCc72X87dOpeTUFYNUCyT0AiRHxbPjtIdvVn93+A/aHrj5Krw/ofS3qGdUDvUraY4KgGA0wcF56p6Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747205395; c=relaxed/simple;
	bh=ZJgJDLctdT0FWMnrN69k4QFDm5bIwb/tHQu6O5z+4l0=;
	h=To:Subject:From:Message-Id:Date; b=VmWj4tbBjeL3VEkdg4NHtdMNGed/tdsFeYe4fPT+M6vLjJkf4F2RLLftGOgDkbbZ0eQ3NMWwY16YVuI39tdiNM/6pE/4Cdb1Os1BjjClmyEkSZvjz89hJOO7C7//WxY13RTWEEiLBHZpa/Q5GnXNVo/9PgUCJJORv/W1VBn5UI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im/Q/6IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im/Q/6IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E22C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747205393;
	bh=ZJgJDLctdT0FWMnrN69k4QFDm5bIwb/tHQu6O5z+4l0=;
	h=To:Subject:From:Date:From;
	b=im/Q/6IV1HQMkjBw+Cuxw5ZeYADGdQBCly7BUGdvz0F96dOqoSmjkVr70hI3nF86v
	 D+YmDrCEv67wyh7O2GV03k81VfROYGD4VJC/6QISkhtMVeENIynubeK7SuLwpg4sax
	 yStyZnYEjgiHEu7bQARpNZI6r7Vq0Fl9bBjMsjR3vITc80SmT3wnVXdv58a7i5uvlB
	 RXEMyLAuKEf7SGp84TzQ6sPy91imolyNoiWC+EgQkx1/Pa1IJ+cryW5bBd/Si9eYs6
	 CBck88gC2+IOzoEs9zgf9ApuqVBaQRaVIDhEcj6w1L6jIFXL+Wg9Kgbpr+LIutXtGn
	 c4vgTFSg6LUYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266EC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720539359.14214.12921694133724484783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85c142254300d27b4cf605ad1ae81ad8d97cd14f54506185a76938602266e75
Date: Wed, 14 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747205393
