Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB56182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 06:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648450138;
	h=To:Subject:From:Message-Id:Date;
	bh=q0oMExslo/i1BAFVU4a9jFFjWmfQiUPYk/N4PgL4l64=;
	b=AxZip599qHmiLaM2chSR8C9BWD+Pap/2NDUmnENsjIDUk18P5nBzJXptQ/Asvto9
	S33Y4GeUVg8/DwclTCmVrU3+K78euixGssbjMYUk9xnGl7gFxCmJjwlObxW0YUcM+js
	uda8ckNzEmcygfnrlrTekgbWQ7/s9c3xsWhoKyhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648450138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0oMExslo/i1BAFVU4a9jFFjWmfQiUPYk/N4PgL4l64=;
	b=iT7M6O+scr21Z5OKfFtkgbFsS50W6e7pyZ0TPQKKp8/6mBTfqjprXoWLelYgxnf6
	tgiMcwTSop3dCPZJuqH9JaCmDtFSY7RIURRjApBR3weJVYBMuYI3Bx6lU7Tofc9AGXO
	8Wl28rXt+/OX8EZ3/9uvI2La+9kAL3QKCM5F0rL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf48f09c-3d3750cd-27b2-4e76-b7bb-bf3b94d0b635-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a63012c4e4983322043dcc29a7bb90997063ec5056527d8bbf08f48328e1c87b
Date: Mon, 28 Mar 2022 06:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648450138
