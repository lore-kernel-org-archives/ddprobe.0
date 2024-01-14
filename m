Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0325CC8FF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0By7j3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF5FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705264096;
	bh=ijoNUY3FHH/DavfBNi9C0zdBp+e4ZYmWzjZp+QDKFB4=;
	h=To:Subject:From:Date:From;
	b=B0By7j3INIsUrcDlWOJVf/Qe32A1wXtdrY84bM6OdRj+MMH6j77fmhb2Oe54SiK/N
	 OxkMpDF/QKSZwgvZwfkBoDlJG5pLJIovChi65Q59WiIts7/LjGpI9ngt5/0uPAlxBt
	 nQH9pM7/8y7zYfgH8p/zYG+QAbfxhsF5YUSUAd/1uYNFhhARKkZYerGSTfORHxbmWZ
	 VY7/Xz88cB1cBRl5A7VxXgU8C21rKJmT4CRHA2Bl8tnyLmXxZ4XhVV+hxoT6/L+FO1
	 Y2PRKbaUi7wuK2myvAjpgJbW282H657JdIgfHifhOOkVnEiCXyS9ApC0aqBhH8Ync2
	 cM3s79nXn4ofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6205CC4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170526409637.26227.4189765418634367654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c4f26406f258d4cbf54f49b1f07f259cc951afab6c02fb0f0f9a8f4fb628bf
Date: Sun, 14 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705264096
