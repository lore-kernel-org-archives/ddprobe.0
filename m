Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17171852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 06:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651301578;
	h=To:Subject:From:Message-Id:Date;
	bh=AoAoaNyhvGWr3Y7Jgmi2VqmR6N/Mcudn7vd+d6UsDFU=;
	b=a/SR6dxk+d2T37UEHwS3lWoQ64MsLNIUAUPNxlp9HCCMSkLBHNCnQYkrEOxu6q2L
	HHtg+UT0yCV597VxZd5GNrKg1tWCyxXKUmAJ1K7+FN51eZtxU3DtSo0UX5Qfa14sgGj
	cDiLH816VPrzM2ymJrtq9PpmVTJaHItwl3nSeozk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651301578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AoAoaNyhvGWr3Y7Jgmi2VqmR6N/Mcudn7vd+d6UsDFU=;
	b=aNU9JpkxnldWijP0cy48Lf3rFVL75hGWanHXFjNAGr1Fbto7lZH4QCaVaAmMNohs
	g+uaEWMqYq+bS5Z3ECG/5cYWv8Gyptf0xt3i1Bd5WVZoOSTMRCd+WSAoIjG87TiWkPh
	Qyz+XbOhOkyoQ8UUzrWw7kapm4vl0/Llb9Ly6ZD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180793e7621-79467de0-15d1-4c7a-af87-3194e2299509-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a719da3e7054839850035a3fc345502a17a73de0d7b62702361db23aa2324b5
Date: Sat, 30 Apr 2022 06:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651301578
