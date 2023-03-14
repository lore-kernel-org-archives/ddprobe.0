Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9F828EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4308C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678783685;
	bh=9GWQK6gTscBPJIQh853YH4lL9CA+KhwyHTYimgZJqu0=;
	h=To:Subject:From:Date:From;
	b=WkPlUnM+83ODTfC0sDkB+RWL23WcJ0uRfe1LiahsiBWCtQ+34EPQ52GqvqGr507/k
	 +vM3YIDD1sG8v/iedyCGmZKXt9QgC00JRVzDafYUz4sETXin9thqC3QYaIaBhA4UQr
	 PqqaU1vClls07ZTjXJGTC2Foy9GeHYPadXTfzEqhilSqu0jZmGZlYXGLID5emRJEys
	 qrmlJRXZqFMMYJTwe2Qz5iXlpUDOo8hFXbk1ZaYyLJAv3IvMuSvGb8r95CMSVeRcPJ
	 ouPNa0WXYCz+nR/KaQJ6kCZfp3z6jvwNztLZTjO90zygx6m3OCXae1SJ4M1KsNJjyI
	 YV4qVvfdHsSfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFEDC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167878368576.5714.1521743521725706270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2964ce305e403682db5bdce5c260f52304f438aec25067b74a06f2d9e9275cb
Date: Tue, 14 Mar 2023 08:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678783685
