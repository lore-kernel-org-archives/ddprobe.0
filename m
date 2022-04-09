Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFC0A52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 21:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649539078;
	h=To:Subject:From:Message-Id:Date;
	bh=G4OXpp57M2wR0v0yDzKDaz6jsWl0RXXkouK1uoCWWnY=;
	b=eXgt+yAE5adw9DrBCPV7/LfHMgzIt6CJNcukonYsW2ABHHBcVa+tBkJLKHKb1uDo
	24lf00G3943YJasFj8u3jVFJejx/ZpHVEhblp1e/OyYDTHBO9lhSK24PQoYVp875nz+
	zZ2z8uHhyQihLq4cTZYfOlldC7fH5YNvDvl0Kqbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649539078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G4OXpp57M2wR0v0yDzKDaz6jsWl0RXXkouK1uoCWWnY=;
	b=PrZaz/G5vE5/ERMDL/gSD4MHxvYdTCHV6WSPiAhRrDG4Daua5gIhv/Ddud+KUv94
	BVYPiTZ34gFGN5FmqB8YbRrNoxcrNcbIPKR/io4aASul188WSGggysPnGfiHn9YUlgL
	iucAFCDdgxux5HusOcYUbfUkZdfeDCTJSLiCkz7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801030d8cd-8dd2a359-4f72-491e-b7dd-582a2bfec633-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87c8d49806c262907d629b4daf2d45daff2708c50547b02eb338dc20d5f8dbfd
Date: Sat, 9 Apr 2022 21:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649539078
