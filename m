Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A171D6195
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766958834; cv=none; b=N9YOsQsWKWhTabqEyq+cm2D9FOcTfo0paJALFWnp4h/hmnXvttEWn9BYg70IWwIYksnLeWu2QjdTY/0yO7hMdr9FcsCq7FaBxfKICAEbKYcxkJE8otFH7CR0nYgaI/I9ZQqNxS4cK8pvOjbwi+/n+RxdHlqMqSQjYEWbZPFeyJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766958834; c=relaxed/simple;
	bh=xXrKRDxoSutsiyAiZADq1g+uPeIxtesFFIFSPooistg=;
	h=To:Subject:From:Message-Id:Date; b=T3t2rPIyj/U7osUqSPw7dcbrSoo0kUBcenUy4DoFHCl88BJHdsvrguhoMuPh0tNjIUFl+Qi1uDgjngytsj8OCD2tZ+Z24jHfMP3gRLoL0/6EIcAu7t1UuIybghbkcwvq0qUOe8IV6WOxw9k70MXMJ2sTP2dU0AzDgEZXCuEk+wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzrQTEER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzrQTEER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6872C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766958833;
	bh=xXrKRDxoSutsiyAiZADq1g+uPeIxtesFFIFSPooistg=;
	h=To:Subject:From:Date:From;
	b=UzrQTEERtNNr9fk1e2PsSRrMj7I0Hn2yypWiUpCKLF9kYM3NXm/5wvGuTN2c4awVB
	 jB3scRAIjYs++r+UyXrjyVoLl1w3UwNDP7V6mSsF5loFnSEQkx1NnIL8ZrdENL7uVe
	 YPWpFPJnISlssrIkJdNnrSjIz2h5Y73gE3R4s9/U4/19XLMeUKNKH2wsPt8LoKIjZA
	 NYZV8hrsP4dy2MlzvJmOo51q5noUEup/4Hy/o/8xb+xfjqx7UX9Peqx2AwzYyHJIVS
	 vqzzp1sj7fAHH9HRu9wUayWLKK5puJiQuvWi770NWTM+njo1vHLXGDF0HtaN5w769g
	 bPHqrh1tWVqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC4ED3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695883362.17100.5500298091003945360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a619d3d0d8b7e1ca9b508a48654fc45b2884f0b49802129486de31317c46caf
Date: Sun, 28 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766958833
