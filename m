Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1898F1851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 10:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655201639;
	h=To:Subject:From:Message-Id:Date;
	bh=cNw/YkRBwMZF7iGJdZj16PiWSBWm/Sntd58AtLPoH1g=;
	b=CCdWtDey9A4kyW4ap1eef0KxWfuLZlqBdmUyXwDwxy0PsmLfpIqOjTozMTq3bmkT
	yFNINYjStiUvgfD0p5CEWTRB00S3nhS+vPILy2BDutSy3UAB7W52eCjkufF8JFTV4zl
	M3eb1WlYEVYU3K8HLnBXcJ6FcdIkPBLTzytmZYUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655201639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNw/YkRBwMZF7iGJdZj16PiWSBWm/Sntd58AtLPoH1g=;
	b=OnaaFJKi1jDlvRNlRAIWDpMPKgYd7KJdezTcuBUfydkDKgowOTp4jdbi02bl7UuR
	V/hLsqUofaWCZ1A3jPPyyq12EaUKaZTYjthFDksZEdh3c6nBLlG6gMLG4/wlpdT2RFr
	JAyvDLJ4bomNZne5LQfWpyA+1K7sLQbm+fqVIwhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161b4ab84-23be920c-ac99-4134-8945-8ac4eb9832cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3135f9eebd8357ced6e4706c61869cd42e1a725e07ed27730113255632ec6095
Date: Tue, 14 Jun 2022 10:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655201639
