Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB01A20409F
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742732993; cv=none; b=DzlR0c/EsFHjwCkd5DeqvRagCTuQUsJ27FtI63U9lZLtjIozFPZ8k96e2RUytPzUy4k5SY/iTBHnmTbDmZCRqPkNJvlXCAwK6SQnvEJ3Fvg1owDZacvuRYtpSdm1+2Q2m55xf1Ny+8MNk1t1i7TKGV1eW2Dutuw2mC61JKxHJUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742732993; c=relaxed/simple;
	bh=YCqAW3GOs1BkpOZFvLFMHUZURaDU4H/XsFUY4L6RGHE=;
	h=To:Subject:From:Message-Id:Date; b=rMCy8K9QdpBp1j+GSCtp9aywFqfWq+bEV4PmkyC+9O4uWXQGsV5YY6J7h9l5n/GVfW8tzdp/tgWV6ROciLKYUC4iABBatgJ96X7uQxC0XywcfjMhGnAlDgiFhqRCYBnUL0an5HdsrU05RFRpc4CqurzMM1yBX/gyWlRB3JNv15w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMHALEbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMHALEbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9244C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742732993;
	bh=YCqAW3GOs1BkpOZFvLFMHUZURaDU4H/XsFUY4L6RGHE=;
	h=To:Subject:From:Date:From;
	b=ZMHALEbO60Z+whMfRZv1NoVASI11Ju07QmLVLvgGD2r5VeAzxbFJtUn94LSutj8qG
	 3/3RPGssU7E4ptoFb5I/BLF4Eusb02rNleEbDh2x+tKhxo2qp63My0CtZ41wkpquLj
	 YnhazX2Y3LHLEuNqc0anpZMKEsIQe08Dff12/46p5sVXXKXMdqGJkE3YKaPk3WageJ
	 r9lrIJU9XYQR4vCcHAL6Ag+8T3JrVJSzi05grPEvUzliq38/nQ7rHn58H1BQV7ZueR
	 qlM1gUN42AG4iEJh0lgScu9L+NpOzTbRRcO5LJnq3x5gO0SbjyAmchbCo06Cyh+jdh
	 rNqY5oHi8Y4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA3C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273299360.27843.13460496767281965560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce096f6d659fea1bcf1bc240b29895dbc86449cd1da3b5dc27e8b4037522c7e8
Date: Sun, 23 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742732993
