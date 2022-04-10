Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ACAEA6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 15:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649602918;
	h=To:Subject:From:Message-Id:Date;
	bh=POS9aRA5sUBhMU/4i/+/Zwvh3vxvUztiY5weRrgDt5c=;
	b=dNyITFoCCCYiE7vKrcrQPTUMfddkiCUrjNMqGcvpaNntXQkEeWBFr9xTbjGH33Fu
	ohjwTpZlBnldDMvmvArmRKFoGSz5eq6QrZnLaZy46KxlQkv8sbg8r5Wx+UFaSI6XZEx
	vf6OXk/uawi8/FCjpR6K7+ze5AvGJGYNBRShuatw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649602918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POS9aRA5sUBhMU/4i/+/Zwvh3vxvUztiY5weRrgDt5c=;
	b=hjy307segV+bAdstAXhaS8oPFgfANPYGb6UicchwcPHQmI1nd3xGFJ13g27o6sOs
	pkoXCzIQgNBr68U9FnbmeM2cOcI+kSpIBNV7L++yp2nAC1Z3UYQvhKoAExkitYmq1+p
	WmgjyiBz8C6WY6sQ+bkYD5dmUHtv5K1Gd/VLW9Q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013fef764-1b055877-d948-46ab-9b31-87ca2fdd38d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77ddd4c10930c1c2117a3cd4a1eda502e35323360a8eba66138263663518faa4
Date: Sun, 10 Apr 2022 15:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649602918
