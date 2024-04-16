Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB0C12CD91
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713278363; cv=none; b=G0wdTIG3w1q0x87Tca8/jKxsAu9EUJk+RjJWM1du9NMqmMmIdtDor13uB8+Hxuz7y3MRaqek0JEzQW+HKgTO+mmhiHV9Whq6VuO/vIrLcSbaygny15e/xX6Gc5JIifR7M7goHgptcax/kOMO7WrBCEixbZgo5zKPy1ONx/bjacc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713278363; c=relaxed/simple;
	bh=RBDLQQAc9GnB4lcQA0kjGLgD8j7nXLRq0XOdp4R80P0=;
	h=To:Subject:From:Message-Id:Date; b=rUe4L4I41Z9hePdoVQ/Kb6HoF0Yopky9rX7l5c/G0UYJ5eEmjqzHOVFCmv3RW0Cvt5+VGNgdO1Fmb+ug36OXFdoRa7Xr4JegT7TKASPXE3sEuDLy/cCqImYE6D5ttQIaVV3njjpRDlvwzLEGWTqVzFcdu0TWPhIxAlAzjMNw9OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqhPMQ7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqhPMQ7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2773C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713278362;
	bh=RBDLQQAc9GnB4lcQA0kjGLgD8j7nXLRq0XOdp4R80P0=;
	h=To:Subject:From:Date:From;
	b=bqhPMQ7RpQ8dr+/ZHFfKL7jtoBicvo5NgO5b7dvu/YEVm7uyAq7docugBd45/W+6l
	 55m46nhwpU4BuAJv8mzIjhPsXPQk3n29sDwGdUq0TzdjqcfpqBHeNvArYo8+qxqWkk
	 JFrLYTFUAXb6uTsDs3U1yQDr9zuHUUgkRZKGThIWZkb0Qg9x7HW0Ctdy8O9RL6EdB1
	 1XA8RJeOFxF7My0tG3VkT2mrr9ATxcQv+CHLgFfR2YBOXpmempkGTBOdsXHZypokay
	 IK91DtDuXkpGakVoQYriTpM5je2MppRNLpl2VH6cNF18XlZgoTWI0N4MeMttnjXx8+
	 U+JUvI7tgNaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD309C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327836276.564.7942443451119722886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61625bfe6d5c304a1b213b190648c0d2d36301521e988c8183e24ee0874ba5bf
Date: Tue, 16 Apr 2024 14:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713278362
