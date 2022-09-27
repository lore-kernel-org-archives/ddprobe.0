Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE287E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64161C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664272253;
	bh=vFluOA2POi+hm6ZSqmyXhqVa6ljpoqfLm16797ktPoE=;
	h=To:Subject:From:Date:From;
	b=MpcFUll/cOeCqIYETwwgkI0j94gqZHiSwcFTwHoKBfLc3aV6PYaehjCyYbrsz4AUB
	 mJKWOmWb5mYG900fwnHF7eTgUwLEZ9JYjs26qX+OOzz5P90DQK5QJZQjSzqWuoAyKA
	 JSzEWyf0DYWb9P/udMgMlbQy4t7KEYqBKchSA1f7SduItJjO6AD7I/JW2RAhwbJZnB
	 g8rApuO837rVJExsAwOjKdDXkDXm1ONs5wHoWg8RMAIvBMBtD54qotyyKDTHMEJ05n
	 4maKfuNbSFAkaSC9WBJU2vyNDTaIXcCMV0CrDp82Dd/Omb013McCZ5Wmj8OPR9D4S1
	 V9tW2iXrxlQLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB41C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427225331.18888.8089022674996659680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe71a11416e3d3ac20f3fd5b05e09491286b96beae6837a6be526043597386e
Date: Tue, 27 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664272253
