Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666272F53
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yoo+L6Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C653AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697381228;
	bh=Dc4JoXtkhV5iU3hVuJqtvKy5KqIMipjluK+51HMN0cg=;
	h=To:Subject:From:Date:From;
	b=Yoo+L6OzYC7cJi+X4+4PmzuyKrp+kkM3fzaVtsVNAlPCZxEn2r9NvKsJkp4wKjGRQ
	 7kgiA38zaip4bjnljHcdlcnuvxSQrxcb+WqxYKcQ4IvUtCj61zME2SdHFZ1WxScxsf
	 p1mAssCUtzGKNjG1GKMDAPf16TPEnxcIA5nk/JPmdH3Hl7wS/VuhRMLZiwcnXLnFB6
	 l/4j2FBYUnXTZueIYYpp1dvl4EUh5olXW6AagwMnbEzMfORB5QpgwQD2eXrOo89U9z
	 LxGpdckFKxKm93OaM7cLiwIbigQj3dH0KKqbGNNXkjbDEr/oWMVbFdWq279sW+BnMd
	 6p0XD8VH0mjSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90DCDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 14:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169738122869.18368.12853689803311441091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926c7b0cb1c52cee5d263d31be6cbb3cb5fabc89165cfc1f250d83949228967b
Date: Sun, 15 Oct 2023 14:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697381228
