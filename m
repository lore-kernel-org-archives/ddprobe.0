Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74B23214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C9BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670623287;
	bh=mpP7iyijsKJy1ZVsZmdeSj2hYAWn6Jv3d8ybIlN43Q4=;
	h=To:Subject:From:Date:From;
	b=tB2r02Tmtg8QtYpdYlDBb5GvhT63fDpdMbHH0UzyCWwrUfwpF4nNQvx72gaVaqFAr
	 1UB6aM3kp28p8xENyRDtGnkGd7QUthH0ZZYdlPzkh4bK9+MGDRBclAbv9VmuOCI2Sk
	 V3N1lz5PBvxTZcy+IRkPb7lAm83JlGdYjx1HnB8/6J/adT/2fN/zODfP3PlEBpDlkO
	 VWLXM7YBKQxymhPNxtmGVXL/1M7Fvn2YqUeG5Kd4+64ZkKpd+ZqNgbylM26N2HlsHE
	 kcm/dzDqaZAWjLC/+GKSkYPeuQfMQ4OcKmVzV1gQlR3Q0s/bNb9w7DB64AVNZt5zc9
	 5XLbFNGcJX32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60994C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062328738.30397.5380185120482620379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b560f4f02f0019e73e8db130042dfb3954953c8ea833fd2532ea8cbcab383d3
Date: Fri, 09 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670623287
