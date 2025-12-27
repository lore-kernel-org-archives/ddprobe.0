Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3D3A1E96
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766861634; cv=none; b=Zg4rYE5K/E7IFUfC3j3jB6PNlWHnBQj1PTzn1aV0CI7iJXPBUZNtnORrI6OeRz7v23hMZMQYNNbkfSb4Je0wTuC0t6vH79j5funEX/UJhp3NZqghA89YmAiaIkJSALacOlqZlojjCBTJ1Dvdf5MHrGcmcaO2lVGx6womDhbxf9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766861634; c=relaxed/simple;
	bh=X32MWjzukTHwQblw5S5Ww7RrtcKR7vsaoiHG+0Bj4aQ=;
	h=To:Subject:From:Message-Id:Date; b=Urb9Sml2Uz/HqoAE8agV9Nge8GTr0J00+vKmG86au17IZnjzmUBxVB8udGywsgtLGmSrHVwasl0QkywDc007/YH3amWzTz6a1q1baN3MlRUTdzUTDA4ZancqIpiqszD1rD4lc/7jSI8c1Ndfr33k46v38QfQW4fr2qbG6U81yiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co9C2doj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co9C2doj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AC9C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766861633;
	bh=X32MWjzukTHwQblw5S5Ww7RrtcKR7vsaoiHG+0Bj4aQ=;
	h=To:Subject:From:Date:From;
	b=Co9C2doj8sBTmAn0Uu4KY6W2foYlAHoBQjWmJY7Ov5ITBe5lIlnNQpyVr8zxBRFBb
	 9Q5gj5BDI7JEI9TV16k67O6Zeir+Iw2miwWXhXK5PMs5mBZtseas2Ehibc8GAsDVRG
	 8OB0VAWF9UrAaIxsBIAmwqyYmw18ZLS2LvDrpY4e4vT4t0bJ3vwQlOEG5v2vo5wxVk
	 sLfp26mYH6xMEnq6uxGZpKUv0QNnfJxjbDawyTxWa5JMYkMbhf8UJfLoHKdAxoojVG
	 vQ8irptEaqq81Nar2Bhw3iBgYQcgGmvBYLzZEN5oFWSluK3kLIOefwMX0o3ai2gNtf
	 6/8yEn6zaFXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32CCE92710
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686163365.24545.972628242357135804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc8282850115f821f4676594f15e43105618ab0171fa2dedb101b1728492187
Date: Sat, 27 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766861633
