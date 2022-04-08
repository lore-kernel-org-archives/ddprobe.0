Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF54C623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649409358;
	h=To:Subject:From:Message-Id:Date;
	bh=l5Aa0Hc+I/EKBqqIFMzH9768Wnog8SJYcRe1iZrd+lM=;
	b=cxnFq7XOB3cvCtCQJfhDI/6fk7qoMLmtjhBwPAnVJ74F1Exxr/hxIzIuwzLT1Pqm
	ofkGUwUqavnpP5Tl24xg2S9pWDwipsVhkDbe5Wk+RGNpOT41gYvcH0tgANv4E4tueU3
	B0rNG9sIJhrNRfxMrIZbQvZU9m3sxF2m/OrUf4Jg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649409358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l5Aa0Hc+I/EKBqqIFMzH9768Wnog8SJYcRe1iZrd+lM=;
	b=D1ilOQqykKN6ilRbpd68stS/UdG7RqAol34tvTyU8flzwV9viGTN7MpYu1y+NxsX
	/6kFbCZa/DDDp9WvPR569RCipTt5qbmI4kgdRw2Vt2HP59GxV6qYdMyBfr/V4EX9Qla
	GWzkvhyPkG1vAkrWMu4YaaXagf/y2Saw0gT4qBWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008757997-c79b81db-3fd9-40e4-a0ec-fd371b36792e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a0f66780679b647ba2190368219ab92b9f17bcad451a7769f7b54e361d27cf5
Date: Fri, 8 Apr 2022 09:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649409358
