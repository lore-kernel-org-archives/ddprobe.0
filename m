Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D624D29A8
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898A5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671476487;
	bh=Xdft2/7MAUuiUG9unEXLqpPAh/hitX8N0y5h0PPxv68=;
	h=To:Subject:From:Date:From;
	b=BmPyiolE6XH4rLPc9IBIfLx6v8Br1iMohNzLJ+Jj7zJFVEgAYxIO6fEBVFbt9Npwh
	 SfLhZFCRsudmuyOWZfB9/76mflnhLHVvuaE2lZ+dkYbHzW8pIfL/v2K0pg4CreX7I+
	 XJagnOFVb5CdoPIzlDXennbaK7hDQZjbzYnXdVHDOSNqjNJwRjQKYaTGJj5p7hGaSN
	 M7JThwjczejHO5iFZqYgBcL60VOagWt1gRkk0PkI7hv4huBGcFouimaYiHZs3U16Kk
	 FHQnIgo2+w2mkPSWCaaliWFi5ASbmUQnWrvHOPEusqorBB//gL52yC+LVtGq0AlHJY
	 YmhDp84Nu8c6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C267C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147648742.17779.7496140698529844310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a069b944996858dd5554e93a2903c29ef7e9a32c745dba954e044162d2c3280e
Date: Mon, 19 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671476487
