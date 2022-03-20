Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6200C7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647765984;
	h=To:Subject:From:Message-Id:Date;
	bh=roGyRwe0nblMXrAM9aYkNU3rGzFcn5jWzJxV4nlBtrA=;
	b=PXjP/R+nS2wh4SBlISTxEh/IYGZbT1FekCoQePw2RXOuupr/GuHPPLeCj/u0SXZP
	ZMHHMluk0dC0ttmjCy0c19l4sBdkUiiqgenemfUF7IXOk1FbUaHu37t4TeuIp8M78I/
	AU+N4I0EBHg/WrwXQMs4lAFDxj2QaK/PV7b3FvGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647765984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=roGyRwe0nblMXrAM9aYkNU3rGzFcn5jWzJxV4nlBtrA=;
	b=i7YwFFd+dOVpSCkpGNmnZO0B72W73dJZ1bbabkkM6Mq6iUxrYHBqXUw/acQwN47v
	in+v1WgBjlLgVlJP/iI3ADVkJrahmxmLUzXvlSZteErNXJeNqSbtxrjIFMOpVU7d8Y+
	FL5qaC5VOtKF/Ihnki2FbikLVuQwx2hEqihsp9Cs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6819605-1fbda1b6-73d2-474d-9809-72263aec82c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d1bb5843609ab18ba6cab69370be38a38865bb455a6daa478cb9162ec3db83
Date: Sun, 20 Mar 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647765984
