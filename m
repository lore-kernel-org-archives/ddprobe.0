Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA09636C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B447C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668826254;
	bh=vs3iAwo8v1jOVugg2lW+4OjWKWRxMxtiHp0uD8e4NOw=;
	h=To:Subject:From:Date:From;
	b=Ch6n5Stig/KnOdDeKqUMADlxr66fJRvsVhwLvu9nLAfV1opkBhfgG/7g+lr3qS6eX
	 1oIcMH4LiipE5SEQlccvO7HUyyQRTM4XWGg3r71RGxqok+noxQCVHHZIOwICQaBC5f
	 pclOM8G3+27WzN+9JNiYR4yPdO68XYBKb9wdG/6qeXeL949hqMsT2oT2sT17D7wlET
	 kkzdjjmGRD7nCSilxZt5g+59AOz4Y0taWvsJxlPvYSdfGGkEMzfmuVxPIkoUobvHnB
	 AP5qaBbGAaiInSKd5ExAtkzR8dP909I2S5S1zXhd1o3R9uaqQ2J8IymAwbOvOXVcpH
	 3Jv7PEstqdTKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522F3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882625432.2894.1434359923669260299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949b7ce10aa1502b9cc2de3f9e05bc37f1bd7fe27d8d1a27cadb30851226c7b1
Date: Sat, 19 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668826254
