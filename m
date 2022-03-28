Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E5D435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648465499;
	h=To:Subject:From:Message-Id:Date;
	bh=Bp8ChIjnsNLnB6QroyU/1wjkyRL59B3dCESLcabpGlM=;
	b=ZIjfnfJN18Dv5UAoRAPHexfDQoXKIR2UkxWv26/Y3bVVa8AGfjPkDqI2m8HzSjtF
	WR3oXY4R+GGvhT6RtLflNnxjjHA6414x+ScHHFum6J5BVOlBGiHQSti4flVp+paDlcq
	R6Z5fkLRFiMrR59gHdUrRAk5JLCDIeu1TUKzyPJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648465499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bp8ChIjnsNLnB6QroyU/1wjkyRL59B3dCESLcabpGlM=;
	b=bHJXbrAz8vL4uxspM8gStEF0AFgEqYWdRkuMnxqfbeEMmCtk05t97cb/TWqxRHo1
	ilBK9xE/20z3rzg1p3mNJihNEyRzRoP0bxuI+pt0ALI1g48tASlVDaZko2+dopE5UGb
	26h85KZ8uUAjCUrla+4NjzsRIy3IDhdOw7biTHEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0335092-6b940bf4-41ed-4214-a67a-832ec813e928-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fdab568adb8f4c9b11589bc697ad5d2d0100bbea2a88275294d9c16ef02bfea
Date: Mon, 28 Mar 2022 11:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648465498
