Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A4129A0
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660921252;
	h=To:Subject:From:Message-Id:Date;
	bh=SABszoZizxUX5MzIQiiZm7VJ89cqlnrSC01hfItH+XM=;
	b=HpjnVqd2BODKdPi05iVgpwPG6XwCXi5GtshBYZQoJ2krHVc1XTLgsckPz5/vAeIh
	MEsk/fXiG+46BB9ilfnVnvQDFPyn/g1AlI7xs062Q0KZuUfxHqIhPZpe21C2i/SUzxe
	V5SsfqImzutqZcMc4RCX5LjZHpvu1j5ivAWMzBKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660921252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SABszoZizxUX5MzIQiiZm7VJ89cqlnrSC01hfItH+XM=;
	b=IXT9YPrBl0syPfvShmju4ysGscIngb/GfKe6zgxf++2G3s/dRw1KvpGpo0ZnibZq
	JcJDnhzH9f2TFKF8frm2UDGlLCMVpBa8beq4kHsiQJ74IZ6nqCL9qhfI225PPifrqtt
	iCkJpphMixoXxX6Hm7w5DamkbdkTIalZMMnwRmHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b69f0ace-747a9113-f6f1-4786-a8be-0e263ccd750b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30d98fd162b7aa3546146a5aa8d0d3a0b91389bfe333c4b0e049b8ef4756de32
Date: Fri, 19 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660921252
