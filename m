Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2689222EF3
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715842343; cv=none; b=e72sbKbLP9AfvdddwdVgtV6XCFEagPOd9BRTrHPdfc5pgOofKLIFGqDB5MEkFRB//CZzf69Tlsg1GFZFux6jyiKnWxrctfAFv/4BhQrXgeS5gq0J8EISjp1HdQJnFRzHLcgJ7F62bxeyVFhQT2rYSQaibUXvIfM/qQFn5Oxjq8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715842343; c=relaxed/simple;
	bh=az9NqRsQ1KPG3gN476hCfn1uX2hf6NWJT1diZgXxqsY=;
	h=To:Subject:From:Message-Id:Date; b=pHlwguazHbZ0aL7NahFGsiITjUb2K4wywvfI/yoSKpt/09lPeYcwo/MutMMuTfEVZDEFSXar6oZ4NVVCv5StJ+v4vvvjWrav3IDB5j40vpEieKILuHRSZ5D4zpA1gPh3h/ktJ7GgMz5XeWR04snmKLNx1IK57rpx3BZASWHpECg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9WyL+s/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9WyL+s/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9825C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715842342;
	bh=az9NqRsQ1KPG3gN476hCfn1uX2hf6NWJT1diZgXxqsY=;
	h=To:Subject:From:Date:From;
	b=i9WyL+s//WZoMsh2wjI0271qiqCQkgf1XbyVLOivi1ZksvMB7+j7+azVSBz36AZT1
	 0hoTTW2M6cX+aJVmp+kMs2tpE4JROOmddUtQryRY5NZj99VGkXIcQ/s9vr/X/f03uJ
	 RBxizJN7qLwG9Dcbg0t6tDlOzDgyIZtjH8f9yLi9GpahtAMlBClhBFIJ4uxTT4xhEu
	 45u8K05FHWfvr8n3v8JG2lTAEvZKf02xknXb8x72dCfkM7TjOO1KXF4ISxJxTH6OMg
	 AAQejTGMJLEaVP+j7TA4zr87RQ27ViYQjjJ/Zqs+0dYu16Eur0+Q9kaIpxgkU4Mpp+
	 Xg8hHyBbKyPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACD8C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171584234275.7224.10910750750081040653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841d6df864f35f2481aa44918474278e9048ddbb8cc8f7fac36323437241039d
Date: Thu, 16 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715842342
