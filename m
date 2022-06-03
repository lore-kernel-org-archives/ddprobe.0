Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281C6A31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 03:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654228619;
	h=To:Subject:From:Message-Id:Date;
	bh=Glrid/DbBKYQvOkkP4iVLyJ/bP6Ga+o1awoDfzNDvH8=;
	b=bSs++onQATwtflOd5UHZU9QDFv/yGRLO/bRAZOpOFPS39m90hFCMpxBKmBmM7X8T
	LVZ5JN8g+4PzN7cplsjn2ss0kaDz0nAMCq/bQZU9vcho1hSF57Ic7Q4qbALFsSljb+1
	v+ZG+lg4dk8/eLIDzg0CyR3PGBtGK6Socm2MINQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654228619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Glrid/DbBKYQvOkkP4iVLyJ/bP6Ga+o1awoDfzNDvH8=;
	b=EM4yYCGrPzYtqtVCkvYaCxI46vDfEpruEgjq8R4a5kNJD2vW1867qNxraDSGiExT
	28V4rUdQ3riBov82PnwYIKC5A7hewM4qSwGkU8lwAD4mtotkxQVUtuHkJAE+I0cC4Oy
	7NPhsFIbpG8SL8BcnaRqbBym1ctBmS5rkCh3nekU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127b59098-96b336ae-318d-4799-a487-db5aceb3e40a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d69533b7c9d3c304e31fdd236cfd85576160bf81e9f616939d196eea12fbae9e
Date: Fri, 3 Jun 2022 03:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654228619
