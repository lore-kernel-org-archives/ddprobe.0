Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859D7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 07:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654933739;
	h=To:Subject:From:Message-Id:Date;
	bh=nCzsJ9LRsICLAAvXDsfOr/Ngep6osFHByHpqfOJOR2Y=;
	b=PSKc8sPTIHd53i341qNSdK7yuAj3bWejq1kSYZlURTdzKGjvTNATy+NEkLrAaxhL
	BbtW98EtkV+wlhZhQ9GYuDXAZ8ZmCLxzIPOS4m7WOi/XfJ3FK81bfp3MfDU6ekNmbsa
	83B2xkrJtBbImbsL3iiptVSsD4y6EI/9mAyCpOoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654933739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nCzsJ9LRsICLAAvXDsfOr/Ngep6osFHByHpqfOJOR2Y=;
	b=DlkxjYTSJ4jciQoWbwMxoO/Q705mOb8A0dBLczLMSg3epkXxhFgDSj7ZuT62Hzlp
	C7LM/XUHa5euPQbsaFhkdH5D1eaMXJ4fw0z+9U3DcRWM6C7RJbTyAYXe7/QY5SXVeg/
	r51QCxcJlYhfJSSwmyef3MXvpjGRHxHuZENy3MF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151bcd6f9-7fea22fb-e693-4ab0-bc98-ebc6e8e5772c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96c48a76c237bc9a9a7b788038943950d731c6fa2a8a938c897891a42fc62bdd
Date: Sat, 11 Jun 2022 07:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654933739
