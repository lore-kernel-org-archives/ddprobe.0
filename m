Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B62617D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D282CC4339C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674204725;
	bh=K5T0/U/z6gHBghg+KyCBzYmng/5Pgc65cXeWLQserXI=;
	h=To:Subject:From:Date:From;
	b=S23AK92Bw01KGDQo1oondHQpWUcio3CVdWKyJ/FDNCO5obAk8lnceGiTZ8DJQd+Uq
	 O0RH5VuU46HNfu0BOwuIKFW1nrO6JQQ1YoiGSP94+lNsbdtOW9/84OQbAyKWTqnWyo
	 4Xb/VC65bFXjtvn/0yuenYOa8UMiiDzuvJ6gC+zpXffFytUoY0BhVWL2ukAO4P7sww
	 OyF6WlGRn6fAty1X8DZr7m9JaMzJ4KSs1onCoSizCpqRx1EoxiI3qkMjd2El8NU8sh
	 x+eK7gSu9VL5wcZV6k4UPKCVpnw+ofJ99FhLFfBF4jPANgS3R29PYZddQt2RvxO/Ab
	 nj08ovJytDpEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B790EC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420472574.7104.13000645040995791756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f694060600aaf585181677735e57e73ef90df85771a208363a310d419af238
Date: Fri, 20 Jan 2023 08:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674204725
