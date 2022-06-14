Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102C21840
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 01:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655171099;
	h=To:Subject:From:Message-Id:Date;
	bh=2aE/GZi8VLgxCzR/iW+k4H6mPfN+cxZEHbkvmSfAINI=;
	b=H1Rv4RPivJFJvX/DZMN27IHWIKNLT6h0t5N0gheGiT8mmgIS4DInfKogTkS0ug7D
	PzTKw1KOa4NMez4GL/uauPPu/YEhe1wq0eXmtd/IKMTwlf+O5xmsIM4VFz+c8Bv9bVy
	A3bTmbj0+lbIdsT9pM/2I4vUnKyCGSVeQqsLtJ44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655171099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2aE/GZi8VLgxCzR/iW+k4H6mPfN+cxZEHbkvmSfAINI=;
	b=iBoCEa0L5lHZpFmtBpQDPheIjJBl7FJNNd+B5wpSWdWAGDtIxlv6aP597cVYDW6H
	BHbkOEg5Sr8ucoFFgpaIpTtJJHADuT1KUdtbUvvOro8BO7MxUft4awvmaqhgQ7wEGom
	zAvNeFw1v4cx+O7v7Wg3HMZoFbiH9pt9HDM5lcHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815fe2aa6b-eb2c5ce0-4779-42a2-865d-9e6cd7630779-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d4d23e1df96346663cc6fd57968737b69ea825f31b20201f59a71ecd0ec20f8
Date: Tue, 14 Jun 2022 01:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655171099
