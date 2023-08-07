Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AD3101C2
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 13:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6280C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691413988;
	bh=/1D6Kb93B6SOTBZ3VEQUPq3wTiXhcxN/51RmrhcMqv8=;
	h=To:Subject:From:Date:From;
	b=KjU+QRLhB/SUQV2NS+pLlUwKNB4Vpej86m+upSxwZEQnGDJ+VAk746956YSaipnOc
	 TA4YZ5tnjQ5MRqneyfWDfcPtbjp5hZM6uK9PjTH5Qael9Pp2SVt3yISLa/GQxRk0Nx
	 q3VWCzggzR48aRwyoX406Jpj7Oanh2UNouIjj4j0UDSUwxCXmaTnNz9daaqw38Jw4G
	 ckQwg+3gz7yx+B4viOZZ2hOd2+7nETsj4/ET2mtEO820HnCeqCBzulKqAJohVEq79Q
	 qTt4GpRpOYniv394HKu2lJpZnBwTNUuXcFm5AJeBL9ePJmz7jQSB9FBCJy08mAy8iu
	 DBLPqnfAB3Flg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F78C04A6A
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 13:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169141398868.4687.15008989142712794378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72ee0f5135582e16fc6dd53dc8421fe5089ff9c9e48b7fcd57406011276f185
Date: Mon, 07 Aug 2023 13:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691413988
