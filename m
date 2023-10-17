Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AE8BE5D
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K24qn9NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D383EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697516828;
	bh=Yop+BFHn0yd1LpUnUWtr5qn0xeVxSpLw7Yv1FeMCs5M=;
	h=To:Subject:From:Date:From;
	b=K24qn9NRwBtITsVQMz6yRMhtfWAYqnuOn9S/aKZ7PrNLx2wvpI0okEBiMYMc6vfD/
	 +I1G6ZXekEfURVpOpAta+jSOSaLpc0/K61yqwJ6zrha3wBkH6a3RPKQz1kxxQG2jUn
	 nLfGIHRfI2ifRJ86e9+wcw6bqEFkk/EJTJDgSXgLA8A6PRqEWqHYz59cx82fhvTelh
	 o/WPwAxPQx6SH2Z2kaa4Sklx+bY8sWkCiyzdR1J2yvkjXlZFoCj6thIQnZOekmw6vz
	 M4klOuY0M1PKr85GUvxBvJ4V3U23cNF1hmE9BhKe+/wKYW7QRqoROG0Uwgt0yD5khW
	 7XY5Qx1GZEpYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F28CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169751682871.29155.9797340876654913574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9f32c1665f5082ea6c36a02277d6667993aaa6dac0e303302dd30f9ed3ef04
Date: Tue, 17 Oct 2023 04:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697516828
