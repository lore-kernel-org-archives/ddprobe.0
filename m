Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515815A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656903412;
	h=To:Subject:From:Message-Id:Date;
	bh=hEDxFbMpQqEyQxNw4AnNG6tz7oVi8hNp+QwL840Vbeo=;
	b=CczEyWydb+Pr/8ebkW/LBNgdm7iAq9dPfFVt3kBWlyQTzPi7Jh43J9tTIjniSaeV
	JtwgR7WR+BVWZvN1KQj4NVBM9FNjoLHXp7/fsQbmf95B5FK92/VUY4PVR5IoUuH64Ci
	fw0vTEIP0m0xEa+jOPfpfdLsi9EgPJxQc/c5tjjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656903412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hEDxFbMpQqEyQxNw4AnNG6tz7oVi8hNp+QwL840Vbeo=;
	b=FusbmEHcG42uXYwyl/PZ+PH9MYRyjP0m75QGbeayYUzOifmnIXivsmEyZ0QR11Yu
	znGo9QluoKdO2hI3TTd5uxaLkp+d4uJy1iJFyDUmpQ7gIv6VDPyp4/lTjPoFGpEm8w2
	dcHKH4TqGA3EYK65lQR3DQ9cyNN+nTviTFNZTPn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c723aa1c-bf4069d8-169d-4c5c-81d0-5511b4361479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc002ae49c3868e408da3184d68d7bc312db307babd97db930dea3179068e647
Date: Mon, 4 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656903412
