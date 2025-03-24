Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9A71A2C06
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742851794; cv=none; b=V4w2sqK1EWEzLXE9gInXzEdZjKy8ZWYtN+Y4OgGZ9uiSAJKjZorHVXeCT4r5EoM7SkodtvXAPTh9tSndddjGEIt1b7G6uzyzZWPuZcxAqvHRLe4WXfGPzhmoVXXDBvhGXm9S83s/ljAiqzbUWIR+xV71FUU8fpeqN9vGkF4wxPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742851794; c=relaxed/simple;
	bh=69My54RSBj2bu0OymqnswcWRf+b2O4qDDoPUPod7uI0=;
	h=To:Subject:From:Message-Id:Date; b=f2m5dvuc/ug6V3E6df6UKbwIojPRQAf8BhOvCPPMlILfTxGmk9FzW9AbbMMfzuyI6gHHwRKKFIrJL9xOlkioS2LDT5MC6QOe9cH699xna+PcMBZMIYI52pP7LXCOy53IWZtoGsUzeDdxk20YcjtIsHJHOfXAnXj+KMBwLW0tQjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtA3yqDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtA3yqDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0403C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742851793;
	bh=69My54RSBj2bu0OymqnswcWRf+b2O4qDDoPUPod7uI0=;
	h=To:Subject:From:Date:From;
	b=jtA3yqDjafLyIk8lAIolngveAhPQf/GFdTZkHs9b4RjKeR9/BMjtsiGfAG2dIFTP/
	 VILQh0QQStB+3SlHltZpzlaq/N8WkWOG54XgCfR4J3uZRGhvwcnEGh6D3ayX1gkCxk
	 2hFI/bnZgUZJelXIg3BPqM89xmz9sR37+qDEGS/BFqPPn4sL1YLG37fH1wEpeuyL1O
	 wVhG1tR9VoHXKGjeUlkZ6gvhdIH6yFgOSjzmfSmw1jnqH3QsMUYBWRFAVhnQdkL2J6
	 ZLcA/6R4XsLS7Vkx5u1jWNhdH57qIVtw9sbnsa+lERvvMdlcMMbWIg61XJwvwxtATF
	 rOJw10CdZX2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFFC36005
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285179361.10341.3713555117395959104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bb02feaf21d8fc6e25be3792b4724f04919f21fd901ebf73279dedecf20c92
Date: Mon, 24 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742851793
