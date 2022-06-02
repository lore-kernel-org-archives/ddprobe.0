Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FCE628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 02:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654136879;
	h=To:Subject:From:Message-Id:Date;
	bh=HRZem9DPLHEdscOQpzw1+eXE6EXYupg98UHnvINSr5Y=;
	b=g028KxthzYRW7+NtqSMFTxblWQls/sg1U4mEsHOds5xddp4Lhft7qWpJPlQD9TtJ
	+n/47pHUpJf6sCIRxPcezwXiTr03MAsZqqNf9mAcPGex6itmXEwEKYlNrZV/Yu2cWGN
	+uHBBht3bzVInONNeN1bdfKge1QV72Vt3LZumFKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654136879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRZem9DPLHEdscOQpzw1+eXE6EXYupg98UHnvINSr5Y=;
	b=YF/7SSUIU8+Tu88Vb7InfwZoyfrx4Lbw1u/MBdpPzKKIfAPzUOAyUwjFR/MAmyrc
	+81lf9i9PrFXEYtjbN4O+4eFEIquztwgls+h08seA9jpQQ923/dkvMTQ1VfFTj4x+vt
	FnGu70N/BfiQTiNqxmVL9w6iJcFa/lb9kT9hdd/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181223db8d4-167b5835-7dc6-4416-86cd-670bd45e8e9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98670fb6078db124afb2d95e49d1f46b10fbbbf0987fb78cade68029d895edb6
Date: Thu, 2 Jun 2022 02:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654136879
