Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0074418021
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9SFBg7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79210C433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705339096;
	bh=bs7jSXG1klOPBMJV2rk1MXtAaf303Tkv5ajbjGNIPiw=;
	h=To:Subject:From:Date:From;
	b=e9SFBg7RY/0zjJGb5+MQW54tYmWwxXiGjfrniqWh2qRxA8DcuxjtK1PGmcrtJRTqg
	 +4tNfWGoeLR0T5phJqWYIEAs3VC8NKW2xCh2gXRPjl2CqivT5auohk372I9RGc6jSz
	 a0Ir5H/+2t+y5pdRhA8MYr8UHUniJWwYa9TpW9y6GI5p8tW0+nQgh53PDO+2EuGKBU
	 lk82ts/XWMV/BH6Do5iZjUBj8Sn7bo18c8WYfYZ6GOytWLxW9em3BTfT/9O162Vw6c
	 nJO6qD5dAQZYAMDe1fGzVNe6cYYbg1TosPoNp08biSSujDo84muKevdNVCGmBrKfL5
	 fFpiYLxpE3ShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9CAC47258
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170533909637.27159.12858471173321387214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d65421ac21e27a33d39bff179c83b11793e925c607cf99cf5472c138064e1de
Date: Mon, 15 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705339096
