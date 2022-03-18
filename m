Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FD05388
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647641484;
	h=To:Subject:From:Message-Id:Date;
	bh=OcEsgdrynaqGtFczANKhViHkx3P4L5tly62aLCNcI7A=;
	b=XwcBlBwe5rdjgOTAoSbm8elGZ9MFOt68wChRU0XCvfKTcTA8PquIrk7Qqj+/zgr4
	J+EifSNdxMCVSB2Sa/odbweKcLIrpM292OTC3gpLKrRz+HJWBJ7Kpt+UPZ00ost8jn6
	PNKH1ewN97db0GbTU1VPCiSnyneoYi4vekzdlQ3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647641484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OcEsgdrynaqGtFczANKhViHkx3P4L5tly62aLCNcI7A=;
	b=QmvCE3pOuVVX+1GvTj5TLgGEXuJq2AygAr4k7y7poK+8LYK0MRPwum1w9VFTIyod
	BhQfCQCAjNMblwkseNXktDadD8zhYJYuBI5dlM1yohl8YOyUX7fDsgqJxIrKaIwxu8h
	UsxiHAxJ9MsgbbsSamMnJz5/nAIo3uqoDUJqd3/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f15ddb3-9a82af32-0623-4a58-b11a-0961ba1f8f84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c6d6db4b8c0bd92af0895b84d67e4f6506b51c7a8abe31dd8d1299ab5c02cda
Date: Fri, 18 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647641484
