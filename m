Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3F77A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 00:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654734479;
	h=To:Subject:From:Message-Id:Date;
	bh=BPDBClv2DiM5XJsDHxLfF275sjYQCybb2K/HLFJc9U8=;
	b=Q/3IjWG/QjL8zAJC7qOt47kQYG3FRZ6AIibcXOqdfDW0rd2dnzMSn817Fr91X8cf
	qpqtb5nOL/XUKAAAD0dCOytyoQ9TGGBAxoErmGP2QH/b2dKjPXX6JkjJsZRdMx5LUS7
	bLIC6bE43j2Rjk4Tv65a7xAiatNcQWSrk+dXTIb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654734479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BPDBClv2DiM5XJsDHxLfF275sjYQCybb2K/HLFJc9U8=;
	b=aVRKLyS+eHiYSu1rXRiJ2FOHtXLEekWVzG1dX9eL3PDiHOEb0sg0/3w5hlQjzqI+
	Trz58uecZSpxcdRtr+GPpb9NUiLqD6ZsmAj7aVVoZtbT5IDcTR8LFOBnEOwdqPqR04r
	62Y9g3KPB3siiDVkUqb+Kc0Ja7gdyRT54ZLTOx2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145dc5fa8-6ca9756a-4f32-4d4e-963e-332b1c0cde19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94b1ebf8f35379e9423c6eb2238293053ca5951feaacc0db21bd6e8ea0545fa9
Date: Thu, 9 Jun 2022 00:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654734479
