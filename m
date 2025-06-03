Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0C7211C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748994594; cv=none; b=b7Vypk7NXk3dwHnAyJ7JRojLQsUihjp+RGyVYimGi+8BXScYedh8usP1nLty8Cw3syBB/O65bUtSm8J/JEQW8SA4cFUBhQPXtY/zIBfZ/4xVLJ8jqaRWE/0bvkYZenuWaf//XNXZzfqrN00vgY2/98mzyn4AbYGs5M91Sy/5v44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748994594; c=relaxed/simple;
	bh=mVohWIrxh+PXHNqVGkDQA49l/5obS/Ay7PjLwh+xztY=;
	h=To:Subject:From:Message-Id:Date; b=Tdgur/SukNSwE2Q0xvF1l/hiOmZ7SoNXSn9uuxRe2fDgVrGdivJGIfHLijv9sL1eeMmCHl9xVVH0zrapVBP1c3C3tGzNbj2zRMRuMrTJJ6kBdzIuC4+6/XMiseK1DFP5JatQehYAUFi2IW5zNL0FUom0IIst0m1wu6p1hM/jJMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCCiBi0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCCiBi0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2A2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748994593;
	bh=mVohWIrxh+PXHNqVGkDQA49l/5obS/Ay7PjLwh+xztY=;
	h=To:Subject:From:Date:From;
	b=UCCiBi0yEw63K45Bz6HwKbchU0b5YwzKLcdR5RdnQUYI9R1x8NC0QnqfuFVwsC0Zy
	 2El1q+lhclbu0LQxTrO/Ca1FPFKL5/3RBwsiwt3WFmkjg5tneMPA4wdwX+ndZB8dy4
	 tMgAltIFsTgC9ruoevKgYchOjiSLxKlkxjD83/Qg2uZX7MjqTIxXRQw7ZD48Z5c4ZT
	 SrQcMnifaw39OKA8LbLPGa0j76FG4UVIKFaXD8Q1kkLCuHPh7PFYF5nMCRe7hr8InR
	 AXn/8E2j0dNcCikipxHnHn7XCHEo10bFyAhNDTKWDiB9J/WW91fqZgiN+6kxxQekjN
	 tuifx12XxoNoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8FC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899459359.21543.2564476610579056776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75f684bc753064531688227a2a6f145de29815a3e39f57eb4534836a116e54a
Date: Tue, 03 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748994593
