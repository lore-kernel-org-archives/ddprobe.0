Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A78B2F32
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 19:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651518058;
	h=To:Subject:From:Message-Id:Date;
	bh=03TREPB3IK2h0Z5qDr/OEkQAAZy5uNnqulJ9a3SITqQ=;
	b=g5oVoBXjjfHiLEIDmmE3DH4xM0Ywt8M8gNO3bfbgMAC8uMffNrAIdS2kC5l/iOqm
	mb9HPJmD4X0SSa1bosPbsPv4VtPaKIND1v6FKLjErLY867Aqc4IC/IzAgGRy8n0/nYK
	XUKaUqfwxCeOHGDGyY/5YYXWUAqY5LsIvNxs1V+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651518058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=03TREPB3IK2h0Z5qDr/OEkQAAZy5uNnqulJ9a3SITqQ=;
	b=IB6K6npeeRvOwWGcvNWzdSvk/7AC7eUmoqEyQosGj/s2USovOzQiB8BA9SBezYij
	QeTUrqzDehUGubICC2afquUBCbXS3P5kwzrynzhGY+7nybHlXrZ000mszN/N9/FJ1w8
	+ZxbTQoubNw/u6SiHazes7iGW6U4RRvsm5h/x8Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808625af36-0a3508b2-cedb-4c2b-9e42-9867b4989908-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10f0ac11d195f445727e5620f902f8ffb589f814763feaa4015b2fee17939ba5
Date: Mon, 2 May 2022 19:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651518058
