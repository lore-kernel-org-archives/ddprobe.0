Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E5A7C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 01:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650851698;
	h=To:Subject:From:Message-Id:Date;
	bh=LsNngSAswdA5PgC8ygQBRCDt4Mzt2TLBYYkhBEnRyEE=;
	b=eujkZaciynQCuxpE1KIllcM7FIy1ctO4InINHHsWjN0QzIgRsLFXy5cteyabgWaE
	A9TcYnKSVxSOEezjAgMdD9FS1CNPNpytLW8rpTSo+CbPxVW/xX+fzWfvF0FS7gnSakQ
	pxyRcHbozpUNS4rMvUw5q7uBoI99HDmohTfiwCb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650851698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LsNngSAswdA5PgC8ygQBRCDt4Mzt2TLBYYkhBEnRyEE=;
	b=UXYZMWsYwnWSRQZ8uPgbgGTzpNUvaSbhpiK8w1CJJaQcpsra6ClfkXa38qkrEGMP
	9hn3LaI5IH2YSAkb6Q3jvSqioiJ5/PKzO1XFhTE6ZPNnnI8CSseDIw4EGasmWPCkFsn
	RLBycrOvLZZfrUUwzlvZX5DtVhjJ1Mx6oywpj+2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805e6dd653-a3c41451-a6f2-4892-bd68-010cdb63498f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6858392a050dc173352f58dfa3ef2dea2a33395acc0148f10989f732fe02172
Date: Mon, 25 Apr 2022 01:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650851698
