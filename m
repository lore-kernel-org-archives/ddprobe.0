Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620CF30ACE8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764824574; cv=none; b=feKu3Hkd+SrjvAp09dMSf09kKI/zWtBGDmN+zVP1/s5zy+qzB8e9sRQCQHeCKZ5swoc6A4XTnbBp6nM1gpP648AwDYyGUfm3AnWPrQ0SsNe7jOgrZXWsbAZnZMT6AK9NqRjoNh+Enm5SJg63u95J/BeC8JZlWQVSBj9rjsJWcXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764824574; c=relaxed/simple;
	bh=e6mUbLnMieSKfOv7AHtV8+a3TGAV6kJ8egaMDlagbZs=;
	h=To:Subject:From:Message-Id:Date; b=LrxJWiT4/CEZP7W7c1j9n7qLtAjsVFi9lwLqMfcfXEk2GR4wCBPrU8V7sd5ym00au0++Rk5u5tHngA9qJ+yFK7xDUIkEvYmAlO40n1WBkC/LwfokLrzBBNl2f8v3TXuJKiZ2iuVjBee/FRTZhg6vwB11n2+LKH9lBkjiA6VdPsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk40gG3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk40gG3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BB6C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764824573;
	bh=e6mUbLnMieSKfOv7AHtV8+a3TGAV6kJ8egaMDlagbZs=;
	h=To:Subject:From:Date:From;
	b=jk40gG3/wOb9QgfXyxthnkYCQJymFWe90zWu+cEtIYawP2O+5WEg4A4vzvKSTQHbX
	 tHQjX4pefXnJug1JhqJS8qIC+m5oyLnd6k4mAXAXizBBTBSnsRjxDYkB3K2r+fuBsX
	 m4tOEd79DyaIo0eWPCIK4JU3Cb8qB5VUlXpcCTdNAXUV9uQurIEuRCejFyhBZtao4M
	 2trtMrD4q91s3ZwYOrCdtsRJsb9yXw11RTolYNyVmigi5HQYTugxkFfFGoP6lPNKf0
	 95PmE0JSRCW39kKjVpoMDRzq2koQwWbIg1G9R3GZcTBQUdzSwqIk0gbVgTmNKIhT/S
	 d6oNx7ZdZKGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099CD1D862
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482457358.3306.523092879016595666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17c64b053148bc9690ed8890036e0596a52023a63cea072d7b0a83ce471fa21
Date: Thu, 04 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764824573
