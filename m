Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F7C1867
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 08:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655971919;
	h=To:Subject:From:Message-Id:Date;
	bh=m8HkUU0QCiki9cFtxqxlOhhWVzyp4xPXkqudcZcp/bo=;
	b=QQEAFIp6AI/Q+gow/Orj0VXMS+CKl/iT2h9otNhDDiCJfpnNTAIIAr9pgi4sI7FW
	EdC1wtfPoRca5ghiH5a26jtJ/FL2BCT8zBrhi2s+f/E2f1okqNwyKpOde3yHvJpXn9g
	rOwQr2V4ExCg9Wav/WTmnZ0p8lhtj8jBGHYjDlXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655971919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m8HkUU0QCiki9cFtxqxlOhhWVzyp4xPXkqudcZcp/bo=;
	b=A4OXfx9Wz/qqm7jFriHoFsPMgTk+zg5tSi/6nnKQwSVkwXcaQotA6tyiVErf1BG7
	rYBWDwJq9i7ODm+rBBeTJOfDHpxIJFHwf47+nytZeHpr1m86Ge8H7XLAgsq2gDBDXqU
	OavauC5gEIcjjvnuk0VPxq9hAg9sKUW/s1/gb3jg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f9e35aa-045d2143-fa2d-44e5-84e2-ac4a40792a9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc7c75533041b665afb1aa2ff095bb6653f5c66f81593c5f598b26fd475511bb
Date: Thu, 23 Jun 2022 08:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655971919
